function $(id) {
    return document.getElementById(id);
}

var timer = null,
    index = 0,
    Imgs = document.getElementsByClassName("banner-Img"),
    lis = document.getElementsByClassName("change");

function bannerImg() {
    var top = $("top");
    var banner = $("banner");
	top.onmouseover=function(){
		stopChange()
	}
    top.onmouseout = function () {
        startChange()
    }
    top.onmouseout();

    for(var i=0;i<Imgs.length;i++){
        lis[i].id = i;
        lis[i].onclick = function(){
            index = this.id;
            changeImg();
        }
    }
}

function startChange(){
    timer = setInterval(function(){
        index++;
        if(index>3){
            index = 0;
        }
        changeImg();
    },1800);
}

function stopChange(){
    if (timer) {
        clearInterval(timer);
    }
}

function changeImg(){
    for(var i=0;i<Imgs.length;i++){
        Imgs[i].style.display = "none";
        lis[i].className = "change";
    }
    Imgs[index].style.display = "block";
    lis[index].className = "change";
}

bannerImg()
for (var i=1;i<=3;i++) {
	var Mpic=$("m"+i)
	Mpic.style.backgroundImage='url(img/home/mouse/'+i+'.jpg)';
	
}

for (var i=1;i<=3;i++) {
	var kbpic=$("k"+i)
	kbpic.style.backgroundImage='url(img/home/keyboard/'+i+'.png)';
}
for (var i=1;i<=3;i++) {
	var rec=$("rec"+i)
	rec.style.backgroundImage='url(img/home/receiver/'+i+'.png)';
}
for (var i=1;i<=4;i++) {
	var fit=$("p"+i)
	fit.style.backgroundImage='url(img/home/fitting/'+i+'.png)';
}
for (var i=1;i<=4;i++) {
			var bgs =$("other"+i);
			bgs.style.backgroundImage='url(img/home/other/big/'+i+'.jpg)';
		for (var a=1;a<=12;a++) {
			var chg=$("s"+a);
			chg.style.backgroundImage='url(img/home/other/'+a+'.png)';
		}
}

function sidc(sid){
switch(sid){
	case "s1":
	$("other1").style.backgroundImage='url(img/home/other/1.jpg)';
	break;
	case "s2":
	$("other1").style.backgroundImage='url(img/home/other/2.jpg)';
	break;
	case "s3":
	$("other1").style.backgroundImage='url(img/home/other/3.jpg)';
	break;
	case "s4":
	$("other2").style.backgroundImage='url(img/home/other/4.jpg)';
	break;
	case "s5":
	$("other2").style.backgroundImage='url(img/home/other/5.jpg)';
	break;
	case "s6":
	$("other2").style.backgroundImage='url(img/home/other/6.jpg)';
	break;
	case "s7":
	$("other3").style.backgroundImage='url(img/home/other/7.jpg)';
	break;
	case "s8":
	$("other3").style.backgroundImage='url(img/home/other/8.jpg)';
	break;
	case "s9":
	$("other3").style.backgroundImage='url(img/home/other/9.jpg)';
	break;
	case "s10":
	$("other4").style.backgroundImage='url(img/home/other/10.jpg)';
	break;
	case "s11":
	$("other4").style.backgroundImage='url(img/home/other/11.jpg)';
	break;
	case "s12":
	$("other4").style.backgroundImage='url(img/home/other/12.jpg)';
	break;
	
}
}