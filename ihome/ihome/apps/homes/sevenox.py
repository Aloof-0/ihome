# -*- coding: utf-8 -*-
"""
@Time ： 2020/12/26 19:43
@Auth ： 高冷Aloof
@File ：sevenox.py
@IDE ：PyCharm
@Motto：ABC(Always Be Coding)
"""

from pathlib import Path
import os
from qiniu import Auth, put_file, etag, put_data
import qiniu.config

def steam(avatar):
    #需要填写你的 Access Key 和 Secret Key
    access_key = "g1PUjqCcpI8KWh1r9rsEbCqJNKDVRs17_IUgB4zW"
    secret_key = "KcGIIPTH8cB1U4KfAcHvBy8O_-B32l1TTzyBASR2"
    # 构建鉴权对象
    q = Auth(access_key, secret_key)
    # 要上传的空间
    bucket_name = 'ihome41'
    # 上传后保存的文件名
    key = None
    # 生成上传 Token，可以指定过期时间等
    token = q.upload_token(bucket_name, key, 3600)
    # 要上传文件的本地路径

    ret, info = put_data(up_token=token, key=key, data=avatar.read())
    print(info)
    image_file = 'http://qlxevkf8z.hn-bkt.clouddn.com/' + ret['hash']
    return image_file