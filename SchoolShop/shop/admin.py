from django.contrib import admin
from .models import *


# Register your models here.
@admin.register(Category)
class AuthorAdmin(admin.ModelAdmin):
	list_display = ('name', )


@admin.register(Provider)
class AuthorAdmin(admin.ModelAdmin):
	list_display = ('name', )


@admin.register(Product)
class AuthorAdmin(admin.ModelAdmin):
	list_display = ('category', 'name', 'price', 'description', 'provider', 'views')
	search_fields = ('name', )


@admin.register(ProductImage)
class AuthorAdmin(admin.ModelAdmin):
	list_display = ('product', 'image')


@admin.register(Detail)
class AuthorAdmin(admin.ModelAdmin):
	list_display = ('product', 'name', 'value')
