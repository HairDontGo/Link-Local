function $(id) {
        return document.getElementById(id);
    }

//时间
Date.prototype.format = function (fmt) {
          var o = {
           "y+": this.getFullYear, //年
           "M+": this.getMonth() + 1, //月份
           "d+": this.getDate(), //日
           "h+": this.getHours(), //小时
           "m+": this.getMinutes(), //分
           "s+": this.getSeconds() //秒
            };
            if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)
                if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            return fmt;
        }
        setInterval("document.getElementById('dateTime').innerHTML = (new Date()).format('yyyy-MM-dd hh:mm:ss');", 1000);

document.getElementsByTagName('a').target='_blank';

//登录
	/*function login(){
		var x;
		alert("用户名user,密码123456");
		var user=prompt("请输入用户名","user");
		var password=prompt("请输入密码","");
		if (user=="user" && password=="123456"){
		    alert("登录成功");
			return true;
		}	
		else
		 alert("登录失败,请重试");
		 login();
	}
	if(login()==true){
		$("login").style.display="none";
	}*/