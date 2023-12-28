from django.shortcuts import render
from django.http import JsonResponse, HttpResponseRedirect
from .forms import *
from .models import *
from random import shuffle


class ProductView:
	def __init__(self, product, images):
		self.product = product
		self.img = images


class CatView:
	def __init__(self, cat, image):
		self.cat_name = cat.name
		self.pk = cat.id
		self.img = image

	def __str__(self):
		return f'{self.cat_name}\n{self.img}'

	def img(self):
		return self.img


# Create your views here.
def home(request):
	products = []
	products_imgs = ProductImage.objects.all()
	all_products = Product.objects.all()
	for product in all_products:
		product_img = [x for x in products_imgs if x.product == product][0]
		products.append(ProductView(product, product_img))
	m_liked = sorted(products, key=lambda x: x.product.views)[::-1][:5]
	shuffle(products)

	return render(request, 'shop/home.html', {
		'form': MainSearchForm(),
		'liked_products': m_liked,
		'products': products[:12]
	})


def admin_panel(request):
	return render(
		request, 'shop/admin_panel.html'
	)


def category_page(request):
	cats = []
	for cat in Category.objects.all():
		products = Product.objects.filter(category=cat)
		if len(products):
			products = products[0]
			p_img = ProductImage.objects.filter(product=products)
			if len(p_img):
				cats.append(
					CatView(
						cat=cat,
						image=p_img[0]
					)
				)

	return render(request, 'shop/categoryes.html', {
		'cats': cats,
		'liked_categoryes': cats[:5],
		'form': MainSearchForm()
	})


def cat_detail(request, cat_id):
	products = []

	for product in Product.objects.filter(category__id=cat_id):
		product_img = ProductImage.objects.filter(product=product)[0]
		products.append(ProductView(product, product_img))
	shuffle(products)

	return render(request, 'shop/cat_detail.html', {
		'cat_id':           cat_id,
		'cat_name':         Category.objects.get(id=cat_id).name,
		'form':             MainSearchForm(),
		'products':         products
	})


def product_detail(request, pid):
	product = Product.objects.filter(id=pid)
	if len(product):
		product = product[0]
		product.views += 1
		product.save()
		image = ProductImage.objects.filter(product=product)

		if len(image):
			return render(request, 'shop/product_detail.html', {
				'product': ProductView(product=product, images=image)
			})
		else:
			return HttpResponseRedirect('/')

	else:
		return HttpResponseRedirect('/')


def profile(request):
	if request.user.is_authenticated:
		return render(request, 'shop/profile.html', {'user': request.user})
	else:
		return HttpResponseRedirect('/')


def add_to_trash(request, pid):
	prod = Product.objects.filter(id=pid)
	if len(prod):

		prod = prod[0]
		request.user.trash.add(prod)
		return HttpResponseRedirect('/trash')

	else:
		return HttpResponseRedirect('/')


def trash(request):
	products = []
	all_products = [Product.objects.get(id=x) for x in request.user.trash.trash_prod_ids()]
	products_imgs = ProductImage.objects.all()
	for product in all_products:
		product_img = [x for x in products_imgs if x.product == product][0]
		products.append(ProductView(product, product_img))

	filled = len(products) > 0

	return render(request, 'shop/trash.html', {
		'products': products,
		'filled': filled
	})


def drop_from_trash(request, pid):
	prod = Product.objects.filter(id=pid)
	if len(prod):

		prod = prod[0]
		request.user.trash.remove(prod)
		return HttpResponseRedirect('/trash')

	else:
		return HttpResponseRedirect('/')
