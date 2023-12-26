from django.http import JsonResponse
from .models import *


def search(request, query):
	data = set([x for x in Product.objects.filter(name__icontains=query)] + \
				[x for x in Product.objects.filter(description__icontains=query)] + \
				[x for x in Product.objects.filter(provider__name__icontains=query)])

	answer = {'products': []}
	for product in data:
		answer['products'].append(
			{
				'product': product.to_json(),
				'img': ProductImage.objects.filter(product=product)[0].image.url
			}
		)

	return JsonResponse(answer)


def search_cat(request, query):
	data = [x for x in Category.objects.filter(name__icontains=query) if x.name.lower().startswith(query.lower())]

	answer = {'cats': []}
	for cat in data:
		product = Product.objects.filter(category=cat)
		if len(product) > 0:
			product = product[0]
			answer['cats'].append(
				{
					'id': cat.id,
					'cat_name':  cat.name,
					'img':  ProductImage.objects.filter(product=product)[0].image.url
				}
			)

	return JsonResponse(answer)


def search_on_cat(request, cat_id, query):
	products = Product.objects.filter(category__id=cat_id)
	products = [
		x for x in products if x.name.lower().startswith(query.lower()) or
		x.provider.name.lower().startswith(query.lower())
	]

	answer = {
		'products': []
	}

	for product in products:
		img = ProductImage.objects.filter(product=product)[0].image.url
		json = product.to_json()
		json.update({'img': img})
		answer['products'].append(json)

	return JsonResponse(answer)
