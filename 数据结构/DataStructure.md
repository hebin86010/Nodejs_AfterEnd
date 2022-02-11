# 数据结构<br/>
### 特点：
1. 特征码：<br/>
把能标识用户唯一性的数据，整合在一个表，便于多要素认证、查询等，如：实现多种登录方式(账号、手机、邮箱、微信ID..)<br/>
#### 实现：<br/>
1. 特征码类型库 t_featrue_code_type ：存储特征码的类型，如：'登录账号'、'手机号'、'邮箱'、'微信ID'、学号'、'工号'、'卡号'、'指纹'、'人脸特征码'...<br/>
2. 用户特征码库 t_featrue_code      ：存储用户的特征码，包含字段：id、person_id、featrue_code_type_id、featrue_code、verification_code <br/>
