/*
#第一弹 去广告+原画 (By Miao Miao)

^https:\/\/api\.diyidan\.net\/v0\.3\/(user\/personal_homepage|vip_user\/info|tv_series\/index\?appChanne) url script-response-body https://raw.githubusercontent.com/HopeTF/JavaScripts/master/JS/diyidan.js

# 修复下载视频清晰度

(http://musicapi\.diyidan\.net/tv_series/video/download/\d+)/(1|2) url 302 $1/4

hostname = api.diyidan.net

*/

let url = $request.url;

const path1 = "user/personal_homepage";

const path2 = "vip_user/info";

const path3 = "tv_series/index?appChannel";

let obj = JSON.parse($response.body);

if (url.indexOf(path1) != -1) {

  // 去广告

  delete obj["data"]["vipArticle"];

  delete obj["data"]["bannerList"];

  obj["data"]["iconList"] = obj["data"]["iconList"].filter(i => {

    return ![5, 25, 27].includes(i.functionId);

  });

}

if (url.indexOf(path2) != -1) {

  obj["data"]["isMember"] = true;

}

if (url.indexOf(path3) != -1) {

  delete obj["data"]["advertisement"];

}

$done({

  body: JSON.stringify(obj)

});
