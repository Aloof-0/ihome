from django.urls import path
from . import views


urlpatterns = [
    path('api/v1.0/areas', views.CityAreasView.as_view()),
    path('api/v1.0/user/houses', views.HomeList .as_view()),
    path('api/v1.0/houses/index', views.HomeRecommend.as_view()),
    path('api/v1.0/houses/<int:house_id>/images', views.HomeImage.as_view()),
]