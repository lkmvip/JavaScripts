# Quan-X
Display jd historical price

[rewrite_local]

^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig) url script-response-body jd_price.js

# lite

# ^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig) url script-response-body jd_price_lite.js

[mitm]

hostname = api.m.jd.com

Display taobao historical price

# 不生效或失效的需要卸载 tb 重装，注意不开脚本进 tb 大概率会失效

[rewrite_local]

# 1.0.5（商店版）

^https?://(trade-acs|amdc)\.m\.taobao\.com/(gw/mtop\.taobao\.detail\.getdetail|amdc/mobileDispatch) url script-response-body tb_price.js

# 1.0.6（TF版）

^https?://.+/amdc/mobileDispatch url script-request-body tb_price.js

^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail url script-response-body tb_price.js

[mitm]

hostname = trade-acs.m.taobao.com,amdc.m.taobao.com

# 以上还不生效或者频繁失效的可以添加以下规则，使用规则有可能误伤其他功能或者应用（一般不需要添加规则就能正常使用）

# [filter_local]

# ip-cidr, 203.119.144.0/23, reject

# ip-cidr, 203.119.175.0/24, reject

# ip-cidr, 106.11.162.0/24, reject

# ip-cidr, 47.102.83.0/24, reject

