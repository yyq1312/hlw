
/*判断*/
function panduan() {
	var mima = document.getElementById("mima").value;
	var regx = document.getElementById("quereng").value;
	var pan2 = 0;
	var pan3 = 0;
		/*密码正则验证*/
		var regExp2 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
		if (regExp2.test(mima)) {
			document.getElementById("mima").style.borderColor = "#86ce2f";
			pan2 = 1;
		} else {
			document.getElementById("mima").style.borderColor = "#ff0000";
			pan2 = 0;
		}
		/*两次密码验证*/
		if (regx != "" && mima == regx) {
			document.getElementById("quereng").style.borderColor = "#86ce2f";
			pan3 = 1;
		} else {
			document.getElementById("quereng").style.borderColor = "#ff0000";
			pan3 = 0;
		}
	var he = pan2 + pan3 ;
	if(he == 2) {
		return true;
	}
}
$(function() {
	$("#btn").on('click', function() {
		var mima = document.getElementById("mima").value;
		var regx = document.getElementById("quereng").value;
		if(mima!=regx&&mima!=""){
			alert("两次密码不一直")
			return false;
		}
		if (mima==""){
			alert("密码不能为空")
			return false;
		}
		if(panduan()) {
			alert("修改成功")
			return true;
		}else{
			alert("请检查你的密码格式")
			return false;
		}

	})
})

