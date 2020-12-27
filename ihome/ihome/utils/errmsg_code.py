"""
错误代码	错误信息	详情描述
0	OK	成功
4001	DBERR	数据库查询错误
4002	NODATA	无数据
4003	DATAEXIST	数据已存在
4004	DATAERR	数据错误
4101	SESSIONERR	用户未登录
4102	LOGINERR	用户登录失败
4103	PARAMERR	参数错误
4104	USERERR	用户不存在或未激活
4105	ROLEERR	用户身份错误
4106	PWDERR	密码错误
4201	REQERR	非法请求或请求次数受限
4202	IPERR	IP受限
4301	THIRDERR	第三方系统错误
4302	IOERR	文件读写错误
4500	SERVERERR	内部错误
4501	UNKOWNERR	未知错误
"""

e_OK = '0'
e_OK_CN = '成功'

e_DBERR = '4001'
e_DBERR_CN = '数据库查询错误'

e_NODATA = '4002'
e_NODATA_CN = '无数据'

e_DATAEXIST = '4003'
e_DATAEXIST_CN = '数据已存在'

e_DATAERR = '4004'
e_DATAERR_CN = '数据错误'

e_SESSIONERR = '4101'
e_SESSIONERR_CN = '用户未登录'

e_LOGINERR = '4102'
e_LOGINERR_CN = '用户登录失败'

e_PARAMERR = '4103'
e_PARAMERR_CN = '参数错误'

e_USERERR = '4104'
e_USERERR_CN = '用户不存在或未激活'

e_ROLEERR = '4105'
e_ROLEERR_CN = '用户身份错误'

e_PWDERR = '4106'
e_PWDERR_CN = '密码错误'

e_REQERR = '4201'
e_REQERR_CN = '非法请求或请求次数受限'

e_IPERR = '4202'
e_IPERR_CN = 'IP受限'

e_THIRDERR = '4301'
e_THIRDERR_CN = '第三方系统错误'

e_IOERR = '4302'
e_IOERR_CN = '文件读写错误'

e_SERVERERR = '4500'
e_SERVERERR_CN = '内部错误'

e_UNKOWNERR = '4501'
e_UNKOWNERR_CN = '未知错误'
