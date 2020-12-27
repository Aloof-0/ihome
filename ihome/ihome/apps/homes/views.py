from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import JsonResponse
from .sevenox import steam
from PIL import Image
# Create your views here.
from homes.models import *


class CityAreasView(View):
    def get(self,request):

        data=[]
        citys = Area.objects.all()
        for city in citys:
            data.append({
                'aid': city.id,
                'aname': city.name

            })
        #构建响应
        return JsonResponse({
            'errno': 0,
            'errmsg': '获取成功',
            'data': data
        })


class HomeList(View):
    def get(self, request):
        user = request.user
        # 加入用户登录
        if user.is_authenticated:
            data = []
            try:
                House_list = House.objects.all()
                for city in House_list:
                    name = city.area.name
                    data.append({
                            "address": city.address,  # address 房屋地址
                            "area_name":  name,     # area_name  城区名
                            "ctime": city.create_time,  # ctime  创建时间
                            "house_id": city.id,  # house_id 房屋id
                            "img_url": "http://oyucyko3w.bkt.clouddn.com/" + city.index_image_url,  # img_urls  房屋图片
                            "order_count": city.order_count,  # 订单数据
                            "price": city.price,  # price  价格
                            "room_count": city.room_count,  # room_count  房间数目
                            "title": city.title,  # title  标题
                            "user_avatar": "http://oyucyko3w.bkt.clouddn.com/" + str(city.user.avatar)  # user_avatar 头像
                        })
            except Exception as e:  # 发生未知错误
                print(e)
                return JsonResponse({"data": {}, "errmsg": "NODATA - 无数据", "errno": "4002"})
            else:
                return JsonResponse({"data": data, "errmsg": "ok", "errno": "0"})
        else:
            return JsonResponse({"data": {}, "errmsg": "UNKOWNERR - 未知错误", "errno": "4501"})


# 首页房屋推荐
class HomeRecommend(View):
    def get(self, request):
        # 无请求参数
        data = []
        try:
            House_lists = House.objects.all()
            for home_list in House_lists:

                data.append({  # 加入到data
                    "house_id": home_list.id,  # 房屋id
                    "img_url": home_list.index_image_url,  # 房屋主图片
                    "title": home_list.title,  # 房屋标题
                })
        except Exception as e:  # 发生未知错误
            return JsonResponse({"data": {}, "errmsg": "UNKOWNERR - 未知错误", "errno": "4501"})
        return JsonResponse({"data": data, "errmsg": "ok", "errno": "0"})
    # 没有登录则返回



class HomeImage(View):
    def post(self, request, house_id):
        user = request.user
        house_image = request.FILES.get('house_image')
        if not house_image:  # 判断文件是否存在
            return JsonResponse({"code": 4002, "errmsg": "数据错误  --图片不存在哦", "data": {}})
        # 假如有文件存在则判断文件
        img = Image.open(house_image)
        img_type = ['jpg', 'bmp', 'png', 'jpeg', 'rgb', 'tif']  # 图片的类型
        w = img.width       # 图片的宽
        h = img.height      # 图片的高
        f = img.format      # 图像格式
        small_f = str(f).lower()

        if user.is_authenticated:   # 判断用户是否登录 测试改为暂时改为not
            if not ((100 < w < 1000)and (100 < h < 1000)):  # 文件太大或者太小都不可以上传！！
                return JsonResponse({"code": 4004, "errmsg": "DATAERR 数据错误  --图片太小或者太大哦！！", "data": {}})

            if not (small_f in img_type):  # 图片类型不对则不可以上传 ！！
                return JsonResponse({"code": 4004, "errmsg": "DATAERR 数据错误  --图片类型不对则不可以上传哦！！", "data": {}})
            
            # 假如有文件数据则添加到数据库 house_id=house_id,  url=house_image
            # HouseImage.objects.create(house_id=house_id, url=house_image)
            # 调用sevemox.steam函数，并返回steam_image_file
            try:
                steam_image_file = steam(house_image)
                data = {"avatar_url": steam_image_file}
            except Exception as e:
                return JsonResponse({"code": 4002, "errmsg": "数据错误 发生未知错误", "data": {}})
            else:
                return JsonResponse({'errno': 0, 'errmsg': '图片上传成功', 'data': data})
        else:  # 用户没有登录则返回错误
            return JsonResponse({'errno': 4101, 'errmsg': '用户未登录', 'data': {}})
