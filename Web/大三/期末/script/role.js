var timer = null,
		    index = 0,
		    Imgs = document.getElementsByClassName("banner-Img"),
		    lis = document.getElementsByTagName("li");
		 
		function $(id) {
		    return document.getElementById(id);
		}
		 
		function bannerImg() {
		    var header = $("header1");
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
		        if(index>4){
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
		        lis[i].className = "";
		    }
		    Imgs[index].style.display = "block";
		    lis[index].className = "change";
		}
		function last(){
			index--;
			if(index<0){
			    index = 4;
			}
			changeImg();
		}
		function next(){
			index++;
			if(index>4){
			    index = 0;
			}
			changeImg();
		}
		bannerImg();