
		var x=0;
		function c(y){
//		$("a"+x).style.display = "none";
//		$("a"+y).style.display = "";
		document.getElementById("a"+x).style.display = "none";
		document.getElementById("a"+y).style.display = "";
		x=y;
}
window.onload=function () {
	var table1 = document.getElementsByClassName("tab_01")[0]
	var tr1 = table1.getElementsByTagName("tr").length;
	table1.style.height = ((tr1-1) * 73 +45) + "px";

	var table2 = document.getElementsByClassName("tab_01")[1]
	var tr2 = table2.getElementsByTagName("tr").length;
	table2.style.height = ((tr2-1) * 73 +45) + "px";

	var table2 = document.getElementsByClassName("tab_02")[0]
	var tr2 = table2.getElementsByTagName("tr").length;
	table2.style.height = ((tr2-1) * 73 +45) + "px";
}





