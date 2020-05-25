/*
[rewrite_local]
# Get cookie. 【QX TF188+】:
https:\/\/www\.52pojie\.cn\/home\.php\?mod=space url script-request-header 52pojie_GetCookie_QX.js

# MITM = www.52pojie.cn
*/

var bonus = {
  url: 'https://www.52pojie.cn/home.php?mod=task&do=apply&id=2&mobile=no',
  headers: {
    "Cookie": $prefs.valueForKey("CookieWA"),
  }
};
var date = new Date()
var week = ["Sunday","Monday","Tuseday","Wednesday","Thursday","Friday","Saturday"];
var month = ["Jan.","Feb.","Mar.","Apr.","May","Jun.","Jul.","Aug.","Sep.","Oct.","Nov.","Dec."];

$task.fetch(bonus).then(response => {
      if (response.body.match(/\u606d\u559c\u60a8/)) {
      $notify("52pojie Daily bonus", "", week[date.getDay()] + ", " + month[date.getMonth()] + " " + date.getDate() + ", " + "Daily bonus success！🎉")
    } else {
      if (response.body.match(/\u4e0b\u671f\u518d\u6765/)) {
        $notify("52pojie Daily bonus", "", week[date.getDay()] + ", " + month[date.getMonth()] + " " + date.getDate() + ", " + "Repeat ⚠️")
      } else {
        if (response.body.match(/\u9700\u8981\u5148\u767b\u5f55/)) {
          $notify("52pojie Daily bonus. Error. Cookies expire", "", "Please reopen the script to get‼️")
        } else {
          $notify("52pojie Daily bonus", "", "Scripts need to be updated ‼️‼️")
        }
      }
    }
}, reason => {
    $notify("52pojie Daily bonus. Interface error‼️‼️‼️", "", reason.error)
});
