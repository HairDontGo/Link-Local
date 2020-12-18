
 function jump(id) {
    switch (id) {
        case 'picture':
            window.open("picture.html")
            break;
        case 'dupan':
            window.open("dupan.html")
            break;
        case 'Software':
            window.open("Software.html")
            break;
        case 'friendLink':
            window.open("friendLink.html")
            break;
        case 'zhanZhang':
            window.open("zhanZhang.html")
            break;
           }
}
var timer = null,
    index = 0,
    Imgs = document.getElementsByClassName("banner-Img"),
    lis = document.getElementsByTagName("li");
 
function $(id) {
    return document.getElementById(id);
}
 
function bannerImg() {
    var header = $("header");
    var banner = $("banner");
    header.onmouseover = function () {
        stopChange();
    }
    header.onmouseout = function () {
        startChange();
    }
    header.onmouseout();

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
    },1600);
}

function stopChange(){
    if (timer) {
        clearInterval(timer);
    }
}

function changeImg(){
    for(var i=0;i<Imgs.length;i++){
        Imgs[i].style.display = "none";
        lis[i].className = "";
    }
    Imgs[index].style.display = "block";
    lis[index].className = "change";
}

bannerImg();
