from django.db import models
from datetime import datetime
from django.contrib.auth.models import AbstractBaseUser
from .managers import *


# Create your models here.
class Model(models.Model):
	objects = models.Manager()

	class Meta:
		abstract = True


class Category(Model):
	name = models.CharField(max_length=150, verbose_name='Название', null=False)

	class Meta:
		verbose_name = 'Категория'
		verbose_name_plural = 'Категории'

	def __str__(self):
		return self.name


class Provider(Model):
	name = models.CharField(verbose_name='Поставщик', max_length=150)

	class Meta:
		verbose_name = 'Продавец'
		verbose_name_plural = 'Продавцы'

	def __str__(self):
		return self.name


class Product(Model):
	category = models.ForeignKey(Category, on_delete=models.SET_NULL, verbose_name='Категория', null=True)
	name = models.CharField(max_length=250, verbose_name='Название', null=False)
	price = models.FloatField(verbose_name='Цена')
	description = models.TextField(verbose_name='Описание')
	provider = models.ForeignKey(Provider, on_delete=models.CASCADE, null=False)
	views = models.IntegerField(verbose_name='Количество просмотров', default=0)

	def to_json(self):
		return {
			'id': self.id,
			'name': self.name,
			'description': self.description,
			'provider': self.provider.name,
			'price': self.price
		}

	class Meta:
		verbose_name = 'Товар'
		verbose_name_plural = 'Товары'

	def __str__(self):
		return self.name


class ProductImage(Model):
	product = models.ForeignKey(Product, on_delete=models.CASCADE, null=False)
	image = models.ImageField(upload_to='products_images', verbose_name='Изображение')

	class Meta:
		verbose_name = 'Изображение товара'
		verbose_name_plural = 'Изображения товаров'


class Detail(Model):
	product = models.ForeignKey(Product, on_delete=models.CASCADE, null=False)
	name = models.CharField(max_length=150, null=False)
	value = models.CharField(max_length=500, null=False)

	class Meta:
		verbose_name = 'Детали товара'
		verbose_name_plural = 'Детали товаров'


class Trash(Model):
	products = models.ManyToManyField(Product, null=True)

	def sum_price(self):
		price = 0
		for prod in self.products.all():
			price += prod.price
		return price

	def trash_prod_ids(self):
		return [x.id for x in self.products.all()]

	def remove(self, prod):
		self.products.remove(prod)

	def clear(self):
		self.products.clear()

	def add(self, prod):
		self.products.add(prod)

	def __str__(self):
		return 'Корзина'


class CustomUser(AbstractBaseUser):
	username = models.CharField(verbose_name='Имя пользователя',max_length=150,null=False,default=None,unique=True)
	email = models.EmailField(unique=True, null=True)
	is_staff = models.BooleanField(default=False)
	is_superuser = models.BooleanField(default=False)
	is_active = models.BooleanField(default=True)
	date_joined = models.DateTimeField(default=datetime.now)
	balance = models.FloatField(verbose_name='Баланс', default=0)
	objects = CustomUserManager()
	trash = models.ForeignKey(Trash, on_delete=models.SET_NULL, null=True, default=None)
	USERNAME_FIELD = 'username'

	def has_perm(self, perm, obj=None):
		return self.is_superuser

	def has_module_perms(self, app_label):
		return self.is_superuser

	class Meta:
		db_table = 'auth_user'
		verbose_name = 'Пользователь'
		verbose_name_plural = 'Пользователи'

	def __str__(self):
		return self.username
