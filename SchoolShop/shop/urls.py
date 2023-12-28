from django.urls import path
from .views import *
from .api_views import *


urlpatterns = [
	path('', home),
	path('admin_panel', admin_panel),
	path('categoryes', category_page),
	path('categoryes/<int:cat_id>', cat_detail),
	path('product/<int:pid>', product_detail),
	path('product/<int:pid>/add', add_to_trash),
	path('profile', profile),
	path('trash', trash),
	path('trash/drop/<int:pid>', drop_from_trash),
	# API
	path('search/<str:query>', search),
	path('search_cat/<str:query>', search_cat),
	path('search_on_cat/<int:cat_id>/<str:query>', search_on_cat)
]

