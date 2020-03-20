hostname = trade-acs.m.taobao.com, amdc.m.taobao.com, avatar-nct.nixcdn.com, spclient.wg.spotify.com, oa.zalo.me, vsco.co, api.gyrosco.pe, origin-prod-phoenix.jibjab.com, api.termius.com, api.picsart.com, api.unfold.app, viva-asia1.vvbrd.com, graph.nhaccuatui.com, api.memrise.com , buy.itunes.apple.com, api.sync.me, pool.elsanow.io, lambda.us-east-1.amazonaws.com, api.mondlylanguages.com, api.busuu.com, owa.videoshowiosglobalserver.com:0, accounts.elevateapp.net, purchases.ws.pho.to, api-intl.mr.meitu.com, bmall.camera360.com, api.tv.zing.vn, api.calm.com, www.calm.com, api.global.mp3.zing.vn, apimboom2.globaldelight.net, photos.adobe.io, license.pdfexpert.com, subs.platforms.team, apic.musixmatch.com, api.getmimo.com, api.revenuecat.com, engbright.com, api.lingokids.com, www.peacefulsoundsapp.com, duolingo-leaderboards-prod.duolingo.com,  commerce-i18n-api.faceu.mobi, mobile-api.adguard.com, api.blinkist.com, api.sololearn.com, api-kinemaster-assetstore.nexstreaming.com, api.pushover.net, ap*.intsig.net, api.overhq.com, receipt-validator.herewetest.com, lcs-mobile-cops.adobe.io, education.github.com, backend.getdrafts.com, ssl-api.itranslateapp.com, sk.ulysses.app, dayone.me, license.enpass.io, mp.bybutter.com, *.grammarly.com, splice.oracle.*.com, api.keepkeep.com, planner5d.com, secure.istreamer.com, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, mp.weixin.qq.com, api.bilibili.com, app.bilibili.com, *.zhihu.com, aweme*.snssdk.com, *.kuwo.cn, *.xiaoxiao*.com, api*.tiktokv.com, *.musical.ly, *.amemv.com, p.du.163.com, getuserinfo.321mh.com, getuserinfo-globalapi.zymk.cn, ios.fuliapps.com, api.vnision.com, *.my10api.com, sp.kaola.com, r.inews.qq.com, apple.fuliapps.com, newdrugs.dxy.cn, app101.avictown.cc, api.hlo.xyz, api.ijo.xyz, www.luqijianggushi.com, account.wps.cn, u.kanghuayun.com, api.gyrosco.pe, api1.dobenge.cn, api.mvmtv.com, mitaoapp.yeduapp.com, origin-prod-phoenix.jibjab.com, www.3ivf.com, pay.guoing.com, api.termius.com, api.bjxkhc.com, viva.v21xy.com, biz.caiyunapp.com, api.gotokeep.com, ap*.intsig.net, mp.bybutter.com, api.vuevideo.net, api.picsart.c*, api.meiease.c*, splice.oracle.*.com, ios.xiangjiaoapps.com, apple.xiangjiaoapps.com, *.xiangxiangapps.com, pan.baidu.com, api.diyidan.net, 

#淘宝

^https?://amdc\.m\.taobao\.com/amdc/mobileDispatch url script-response-body https://raw.githubusercontent.com/HopeTF/JavaScripts/master/JD_TB.price/tb_price_lite.js

^https://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail url script-response-body https://raw.githubusercontent.com/HopeTF/JavaScripts/master/JD_TB.price/tb_price_lite.js

#vsco

^https?:\/\/vsco\.co\/api\/subscriptions\/2.1\/user-subscriptions\/ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/vsco.js

#gyroscope

^https:\/\/api\.gyrosco\.pe\/v1\/account\/$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/Gyroscope.vip.js

#Termius 

https:\/\/api\.termius\.com\/api\/v3\/bulk\/account\/ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/Terminus.js

#PicsArt

^https:\/\/api\.picsart\.com\/users\/show\/me\.json$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/picsArt.vip.js

#Vivavideo

^https:\/\/viva-asia1\.vvbrd\.com\/api\/rest\/u\/vip* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/vivavideo.vip.js

#Undfold

^https:\/\/api\.unfold\.app\/v1\/ios\/receipts$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/Unfold.vip.js

#Nhaccuatui

^https:\/\/graph\.nhaccuatui\.com\/.*\/users\/info* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/nhaccuatui.js

#Memrise

^https:\/\/api\.memrise\.com\/v1\.16\/(me\/$|dashboard\/$|leaderboards\/following\/) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/memrise.vip.js

# Jibjab

^https:\/\/origin-prod-phoenix\.jibjab\.com\/v1\/user$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/jibjab.vip.js

#buyhack

^https:\/\/buy\.itunes\.apple\.com\/verifyReceipt$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/verify_receipt.js

#sync

^https:\/\/api\.sync\.me\/api\/purchases\/(report_purchases|get_purchases)  url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/syn.me.js

#elsaresponse

^https:\/\/pool\.elsanow\.io\/user\/api\/v1\/purchase$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/elsa-response.js

#elsarewrite

^https:\/\/pool\.elsanow\.io\/content\/api\/v1\/modules\/download$  url request-header (\r\n)x-session-token:.+(\r\n) request-header $1x-session-token: F3S0w0bysBQFdbjtxpFurrFv2ItBBcBkVQxUddQW+9vjt2JXM751ksqq5GAWpkl+kk9nhig9BGh9JhYHQaokmendY6zLZDscHiRkZD2HrdJclKVCLordAARJhYIrf5C+5OSK6ax2TA45CKi8S09FEtYXN4noXO7gt42NT6WPIv6DKhdIwVxQuIAMLU5abmpMTDlyWeI4ulBWcOQbuZWWZg==

#drops

^https:\/\/lambda\.us-east-1\.amazonaws\.com/.*/functions\/prod-4-syncPurchases\/invocations$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/drops.js

#mondly

^https:\/\/api\.mondlylanguages\.com\/v1\/ios\/user\/sync$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/mondly.vip.js

#busuu

^https:\/\/api\.busuu\.com\/users\/me* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/busuu.vip.js

#Videoshow

^https:\/\/owa\.videoshowiosglobalserver\.com\/.*\/iosPayClient url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/videoshow.vip.js

#elevate

^https:\/\/accounts\.elevateapp\.net\/api\/users\?user%5Bauthentication_token* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/elevate.vip.js

#beautyplus

^https:\/\/api-intl\.mr\.meitu\.com/.*/subs_offer_elg$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/beautyplusvip.js

#camera360

^https:\/\/bmall\.camera360\.com\/api\/iap\/check-receipt$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/camera360.vip.js

#zingtv

^http:\/\/api\.tv\.zing\.vn\/.*/user* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingtvvipv1.js

#calm

^https:\/\/api\.calm\.com\/me$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/calm.vip.js

#remove_manage

^https:\/\/www\.calm\.com\/mobile\/manage-subscription\?token=*  url reject-img

#lightroom

^https:\/\/photos\.adobe\.io\/v2\/accounts* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/Lightroom.js

#Pdfexpert

^https:\/\/license\.pdfexpert\.com\/api\/1\.0\/pdfexpert6\/subscription\/(refresh$|check$) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/Pdfexpert.vip.js

#productive&sleepzy

^https:\/\/subs\.platforms\.team\/apple\/verifyTransaction$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/productive.js

#Musixmatch

^https:\/\/apic\.musixmatch\.com\/ws\/.*\/config\.get url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/musixmatch.miao.js

#boom

^https:\/\/apimboom2\.globaldelight\.net\/itunesreceipt_v2\.php$ url 302 https://raw.githubusercontent.com/langkhach270389/Scripting/master/boom.vip.rsp

#mimo

^https:\/\/api\.getmimo\.com\/v1\/subscriptions$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/mimo.vip.js

#mojo&noto

^https:\/\/api\.revenuecat\.com\/.*\/(receipts$|subscribers) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/mojo.vip.js

#Bright

^https:\/\/engbright\.com\/app-portal\/apple\/receipt$ url 302 https://raw.githubusercontent.com/langkhach270389/Scripting/master/Bright.rsp

#lingokids

^https:\/\/api\.lingokids\.com\/v1\/renovate_session$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/lingokids.vip.js

#musicalm

^https:\/\/www\.peacefulsoundsapp\.com\/api\/v1\/init$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/musicalm.js

#duolingo_test

^https:\/\/duolingo-leaderboards-prod\.duolingo\.com\/leaderboards* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/duolingo.js

#ulike

^https:\/\/commerce-i18n-api\.faceu\.mobi\/commerce\/v1\/subscription\/user_info$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/ulike.js

#adguardpremium

^https:\/\/mobile-api\.adguard\.com\/api\/1\.0\/ios_validate_receipt$ url 302 https://raw.githubusercontent.com/langkhach270389/Scripting/master/Adguard.rsp

#zingmp3

^https:\/\/api\.global\.mp3\.zing\.vn\/1\.0\/getUserInfo\?data=* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingmp3.js

#Blinkist

^https:\/\/api\.blinkist\.com\/v4\/(me$|me.json$|me\/access$) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/blinkist.js

#sololearn 

^https:\/\/api\.sololearn\.com\/(Profile\/GetProfile$|authenticateDevice$) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/sololearn.js

#kinemaster

^https:\/\/api-kinemaster-assetstore\.nexstreaming\.com\/.*\/product\/verifyReceipt$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/kinemaster.js

#pushover

^https:\/\/api\.pushover\.net\/1\/messages\.json* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/pushover.js

#CamScanner

^https:\/\/(api|api-cs)\.intsig\.net\/purchase\/cs\/query_property\? url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/CamScaner.js

#over

^https:\/\/api\.overhq\.com\/(user\/token\/refresh$|subscription\/verifyReceipt$) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/over.vip.js

#1blocker

^https:\/\/api\.revenuecat\.com\/.*\/subscribers\/[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/1blocker.js

#speak&translate

^https:\/\/receipt-validator\.herewetest\.com\/apple\/verifyTransaction$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/speak&translate.js

#document

^https:\/\/license\.pdfexpert\.com\/api\/.*\/documents\/subscription\/(refresh$|check$) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/documents.js

#workingcopy

^https:\/\/education\.github\.com\/api\/user$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/workingcopy.js

#draft

^https:\/\/backend\.getdrafts\.com\/api\/.*\/verification* url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/draft.js

#phothop&PSexpress

^https:\/\/lcs-mobile-cops\.adobe\.io\/mobile_profile url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/photoshop.js

#itranslate&lingo&voice&converse

^https:\/\/ssl-api\.itranslateapp\.com\/.*\/subscriptions\/.*\/ios$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/itranslate.js

#ulysses

^https:\/\/sk\.ulysses\.app\/api\/v1\/user_offers$ url request-header (\r\n)If-None-Match:.+(\r\n) request-header $1 

^https:\/\/sk\.ulysses\.app\/api\/v1\/itunes_receipt_verify$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/ulysses.js

#pre_dayone

;^https:\/\/dayone\.me\/api\/users$ url request-header (\r\n)If-None-Match:.+(\r\n) request-header $1 

#dayone

^https:\/\/dayone\.me\/api\/(users|v2\/users\/account-status)$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/dayone.js

#endel

^https:\/\/api-production\.endel\.io\/.*\/user$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/endel.js

#shred

^https:\/\/api\.shred\.app\/verifyReceipt$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/shred.js

#nichi

^https?:\/\/mp\.bybutter\.com\/mood\/(official-templates|privileges) url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/nichi.js

#grammarly

^https:\/\/subscription\.grammarly\.com\/api\/v1$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/grammarly.js

#splice

^https:\/\/splice\.oracle\.\w+\.com\/devices\/me url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/splice.js

#planner5d

^https:\/\/planner5d\.com\/api\/sets url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/planner5d.js

#playerxtreme

;^https:\/\/secure\.istreamer\.com\/backend$ url request-header (\r\n)If-None-Match:.+(\r\n) request-header $1 

^https:\/\/secure\.istreamer\.com\/backend$ url script-response-body https://raw.githubusercontent.com/langkhach270389/Scripting/master/playerxtreme.js

# 去微博应用内广告 (By yichahucha)

^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|\!/photos/pic_recommend_status) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wb_ad.js

#^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wb_launch.js

# 去微信公众号广告 (By Choler)

^https?:\/\/mp\.weixin\.qq\.com\/mp\/getappmsgad url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/Wechat.js

# 知乎去广告 (By onewayticket255)

^https://api.zhihu.com/moments\?(action|feed_type) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-feed.js

^https://api.zhihu.com/topstory/recommend url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-recommend.js

^https://api.zhihu.com/.*/questions url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-answer.js

^https://api.zhihu.com/market/header url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-market.js

# 哔哩哔哩动画去广告 (By onewayticket255)

^https://app.bilibili.com/x/resource/show/tab\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliTab.js

^https://app.bilibili.com/x/v2/feed/index\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliFeed.js

^https://app.bilibili.com/x/v2/account/mine\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliAccount.js

^https://app.bilibili.com/x/v2/view\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliViewRelate.js

^https://app.bilibili.com/x/v2/rank url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliRank.js

^https://api.bilibili.com/x/v2/reply/main\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliReply.js

^https://app.bilibili.com/x/v2/show/popular/index\?access_key url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilibiliHot.js

# 抖音去广告去水印 (By Choler)

^https://aweme-eagle(.*)\.snssdk\.com\/aweme/.+/(feed|aweme/post|follow/feed)/ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Aweme.js

# 酷我音乐SVIP (By yxiaocai)

^https?:\/\/vip1\.kuwo\.cn\/(vip\/v2\/user\/vip|vip\/spi/mservice) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Kuwo.js

^https?:\/\/musicpay\.kuwo\.cn\/music\.pay\?uid\=\d+ url 302 http://musicpay.kuwo.cn/music.pay?uid=1

# 小小影视Vip (By Meeta)

https:\/\/.*\.xiaoxiao.*\.com\/(vod\/reqplay\/|ucp/index|getGlobalData) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/xxys.js

# tiktok封区解锁

(.*video_id=\w{32})(.*watermark=)(.*) url 302 $1

(?<=(carrier|account|sys)_region=)CN url 307 JP

# 爱美剧Vip (by huihui）(官网：app.meiju2018.com)

^https?:\/\/api.bjxkhc.com\/index\.php\/app\/ios\/(vod\/show|(user|vod|topic|type)\/index) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/aimeiju.js

# 广告

^https?://api.bjxkhc.com/index.php/app/ios/ads/index url reject-dict

^https?://api.bjxkhc.com/index.php/app/ios/ver/index_ios$ url reject

^https?://api.bjxkhc.com/index.php/app/ios/pay/ok$ url reject-dict

# 网易蜗牛读书VIP (By yxiaocai and JO2EY)

^https?://p\.du\.163\.com/readtime/info.json url reject

^https?:\/\/p\.du\.163\.com\/gain\/readtime\/info\.json url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wnyd.js

# 看漫画极速版vip (By HoGer)

^https?:\/\/getuserinfo\.321mh\.com\/app_api\/v5\/getuserinfo\/ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/kmh.js

# 知音漫客VIP (By mieqq)

^https://getuserinfo-globalapi.zymk.cn/app_api/v5/(getuserinfo|coin_account|getuserinfo_ticket|getcomicinfo)/ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/Zymh.js

# 哔哩哔哩番剧开启1080P+

^https?:\/\/api\.bilibili\.com\/pgc\/player\/api\/playurl url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilifj.js

# 大片-视频编辑器 VIP

^https?:\/\/api\.vnision\.com\/v1\/(users\/|banners) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/dapian.js

# 91短视频

^https?:\/\/.+\.(my10api|(.*91.*))\.(com|tips|app|xyz)(:\d{2,5})?\/api.php$ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/91.js

# 网易考拉 去广告 (By Choler)

^https://sp\.kaola\.com/api/openad$ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wykaola.js

# 腾讯新闻 去广告 (By Choler)

^https://r\.inews\.qq.com\/get(QQNewsUnreadList|RecommendList) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/QQNews.js

# 香蕉视频VIP

^https?:\/\/.*\.(fuli|xiang(jiao|xiang))apps\.com\/(ucp\/index|getGlobalData|.+\/reqplay\/) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/xjsp.js

# 用药助手解锁专业版 (By Primovist)

^https?:\/\/(i|newdrugs)\.dxy\.cn\/(snsapi\/username\/|app\/user\/(pro\/stat\?|init\?timestamp=)) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/yyzs.js

# 优乐美, 小米粒, 彩色直播三合一 解锁收费房

^https?:\/\/(.+)\.(\w{2,3})(:?\d*)\/(api\/public\/\?service=Live\.checkLive$|public\/\/\?service=Live\.roomCharge$|lg\/video\/loadVideoFees\.do$) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/zhibo.js

# 陆琪讲故事

^https:\/\/www\.luqijianggushi\.com\/api\/v2\/user\/get url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/luqi.js

# WPS (By eHpo)

^https://account.wps.cn/api/users/ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Wps.js

# Gyroscope 解锁 pro (By Maasea)

^https:\/\/api\.gyrosco\.pe\/v1\/account\/$ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/gyroscope.js

# 水印精灵 vip (By Alex0510)

^https:\/\/api1\.dobenge\.cn\/api\/user\/getuserinfo url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/syjl.js

# 大千视界

^https:\/\/api\.mvmtv\.com\/index\.php.*(c=user.*a=info|a=addr.*vid=.*) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/dqsj.js

# JibJab解锁pro

^https:\/\/origin-prod-phoenix\.jibjab\.com\/v1\/user url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/jibjab.js

# Termius 解锁本地pro  (By Maasea)

https:\/\/api\.termius\.com\/api\/v3\/bulk\/account\/ url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Termius.js

# 小影 解锁Vip (By @hiepkimcdtk55)

^https:\/\/viva\.v21xy\.com\/api\/rest\/u\/vip url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/vivavideo.js

# 彩云天气 Vip

^https:\/\/biz\.caiyunapp\.com\/v2\/user\?app_name\=weather url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/ColorWeather.js

# Keep 解锁私人课程和动作库 (QX存在bug 该脚本可能无法生效)

^https:\/\/api\.gotokeep\.com\/(.+\/subject|.+\/dynamic) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Keep.js

# 扫描全能王 pro

^https:\/\/(api|api-cs)\.intsig\.net\/purchase\/cs\/query_property\? url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/CamScanner.js

# VUE pro

^https:\/\/api\.vuevideo\.net\/api\/v1\/(users\/.+\/profile|subtitle\/prepare) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/VUE.js

# NiChi 解锁素材

^https?:\/\/mp\.bybutter\.com\/mood\/(official-templates|privileges) url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/NiChi.js

# PicsArt美易 pro

^https:\/\/api\.(picsart|meiease)\.c(n|om)\/users\/show\/me\.json url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/PicsArt.js

# Splice 视频编辑器 pro

^https:\/\/splice\.oracle\.\w+\.com\/devices\/me url script-response-body https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Splice.js

#百度网盘会员

https:\/\/pan\.baidu\.com\/rest\/2\.0\/membership\/user url script-response-body https://raw.githubusercontent.com/HopeTF/JavaScripts/master/JS/BaiduCloud.js

#第一弹 去广告+原画 (By Miao Miao)

^https:\/\/api\.diyidan\.net\/v0\.3\/(user\/personal_homepage|vip_user\/info|tv_series\/index\?appChanne) url script-response-body https://raw.githubusercontent.com/HopeTF/JavaScripts/master/JS/diyidan.js

# 修复下载视频清晰度

(http://musicapi\.diyidan\.net/tv_series/video/download/\d+)/(1|2) url 302 $1/4