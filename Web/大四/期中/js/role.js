function $(id) {
    return document.getElementById(id);
}
/* 轮播 */
var timer = null,
    index = 0,
    goods = document.getElementsByClassName("goods"),
    lis = document.getElementsByTagName("li");
 
function goodsImg() {
    var article = $("article");
    article.onmouseover = function () {
        stopChange();
    }
    article.onmouseout = function () {
        startChange();
    }
    article.onmouseout();

    for(var i=0;i<goods.length;i++){
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
    },8000);
}

function stopChange(){
    if (timer) {
        clearInterval(timer);
    }
}

function changeImg(){
    for(var i=0;i<goods.length;i++){
        goods[i].style.display = "none";
        lis[i].className = "";
    }
    goods[index].style.display = "block";
    lis[index].className = "change";
}
function last(){
	index--;
	if(index<0){
	    index = 3;
	}
	changeImg();
}
function next(){
	index++;
	if(index>3){
	    index = 0;
	}
	changeImg();
}
goodsImg();

