from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Model(models.Model):
	objects = models.Manager()

	class Meta:
		abstract = True


class Category(Model):
	name = models.CharField(max_length=150, verbose_name='Название', null=False)

	def __str__(self):
		return self.name


class Provider(Model):
	name = models.CharField(verbose_name='Поставщик', max_length=150)

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

	def __str__(self):
		return self.name


class ProductImage(Model):
	product = models.ForeignKey(Product, on_delete=models.CASCADE, null=False)
	image = models.ImageField(upload_to='products_images', verbose_name='Изображение')


class Detail(Model):
	product = models.ForeignKey(Product, on_delete=models.CASCADE, null=False)
	name = models.CharField(max_length=150, null=False)
	value = models.CharField(max_length=500, null=False)
