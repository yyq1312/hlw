
function yanzheng() {
	var regx = document.getElementById("youxiang").value;
	var regExp3 = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	if (regExp3.test(regx)) {
		document.getElementById("youxiang").style.borderColor = "#86ce2f";
		return true;
	} else {
		document.getElementById("youxiang").style.borderColor = "#ff0000";
		return false;
	}
}
$(function() {
	$("#btn").on('click', function() {
		var zhang = document.getElementById("zhang").value;
		var youxiang = document.getElementById("youxiang").value;
		if(zhang==""){
			alert("账号不能为空")
			return false;
		}
		if (zhang==""&&youxiang!="") {
			alert("邮箱不能为空")
			return false;
		}
		if(yanzheng()) {
			return true;
		}else{
			alert("请检查你的邮箱格式")
			return false;
		}
	})
})