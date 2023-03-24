var time = new Date();
var zhanghu = time.getTime() - 1647920000000;

/*判断*/
function panduan() {
	var mima = document.getElementById("mima").value;
	var regx = document.getElementById("quereng").value;
	var youxiang = document.getElementById("youx").value;
	var pan2 = 0;
	var pan3 = 0;
	var pan4 = 0;
	/*密码正则验证*/
	var regExp2 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
	/*邮箱正则验证*/
	var regExp3 = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	/*密码验证*/
	if(regExp2.test(mima)) {
		document.getElementById("mima").style.borderColor = "#86ce2f";
		pan2 = 1;
	} else {
		document.getElementById("mima").style.borderColor = "#ff0000";
		pan2 = 0;
	}
	/*两次密码验证*/
	if(regx != ""&&mima == regx ) {
		document.getElementById("quereng").style.borderColor = "#86ce2f";
		pan3 = 1;
	} else {
		document.getElementById("quereng").style.borderColor = "#ff0000";
		pan3 = 0;
	}
	/*邮箱验证*/
	if(regExp3.test(youxiang)) {
		document.getElementById("youx").style.borderColor = "#86ce2f";
		pan4 = 1;

	} else {
		document.getElementById("youx").style.borderColor = "#ff0000";
		pan4 = 0;
	}
	var he =pan2 + pan3 + pan4;
	if(he == 3) {
		return true;
	}
}


$(function() {
	document.getElementById("zhanghao").value = zhanghu;
	var show_num = [];
	draw(show_num);

	$("#canvas").on('click', function() {
		draw(show_num);
	})
	$("#btn").on('click', function() {
		var val = $(".input-val").val().toLowerCase();
		var num = show_num.join("");
		if(panduan()) {
			if(val == '') {
				alert('请输入验证码！');
				return false;
			} else if(val == num) {
				$(".input-val").val('');
				alert("注册成功！");
			} else {
				alert('验证码错误！请重新输入！');
				$(".input-val").val('');
				draw(show_num);
				return false
			}
		}else{
			alert("请检查你的格式")
			return false;
		}

	})
})
//生成并渲染出验证码图形
function draw(show_num) {
	var canvas_width = $('#canvas').width();
	var canvas_height = $('#canvas').height();
	var canvas = document.getElementById("canvas"); //获取到canvas的对象，演员
	var context = canvas.getContext("2d"); //获取到canvas画图的环境，演员表演的舞台
	canvas.width = canvas_width;
	canvas.height = canvas_height;
	var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
	var aCode = sCode.split(",");
	var aLength = aCode.length; //获取到数组的长度

	for(var i = 0; i < 4; i++) { //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
		var j = Math.floor(Math.random() * aLength); //获取到随机的索引值
		// var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
		var deg = Math.random() - 0.5; //产生一个随机弧度
		var txt = aCode[j]; //得到随机的一个内容
		show_num[i] = txt.toLowerCase();
		var x = 10 + i * 20; //文字在canvas上的x坐标
		var y = 20 + Math.random() * 8; //文字在canvas上的y坐标
		context.font = "bold 23px 微软雅黑";

		context.translate(x, y);
		context.rotate(deg);

		context.fillStyle = randomColor();
		context.fillText(txt, 0, 0);

		context.rotate(-deg);
		context.translate(-x, -y);
	}
	for(var i = 0; i <= 5; i++) { //验证码上显示线条
		context.strokeStyle = randomColor();
		context.beginPath();
		context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
		context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
		context.stroke();
	}
	for(var i = 0; i <= 30; i++) { //验证码上显示小点
		context.strokeStyle = randomColor();
		context.beginPath();
		var x = Math.random() * canvas_width;
		var y = Math.random() * canvas_height;
		context.moveTo(x, y);
		context.lineTo(x + 1, y + 1);
		context.stroke();
	}
}
//得到随机的颜色值
function randomColor() {
	var r = Math.floor(Math.random() * 256);
	var g = Math.floor(Math.random() * 256);
	var b = Math.floor(Math.random() * 256);
	return "rgb(" + r + "," + g + "," + b + ")";
}