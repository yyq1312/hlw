window.onload = function() {

	document.getElementsByClassName('sidebar__menu--item')[0].
	classList.add('is-active');
}();

const menuItems = Array.from(document.querySelectorAll('.sidebar__menu--item'));
menuItems.forEach(item => {
	item.addEventListener('click', e => {
		menuItems.forEach(item => {
			item.classList.remove('is-active');
});
e.currentTarget.classList.add('is-active');
});
});

	var text;
	$(".Sous").focus(function() {
		text = $(this).attr("placeholder");
		$(this).attr("placeholder", "");
	}).blur(function() {
		$(this).attr("placeholder", text);
	});

$(function() {
	$('#xinzeng').button();
	$('#xinzengyh').dialog({
		autoOpen: false,
	});
	$('#xinzeng').click(function() {
		$('#xinzengyh').dialog('open');
	});
	
});
$("#xinzengyh").dialog({
	autoOpen: false,
	closeOnEscape: false,
	title: '新增用户',
	open: function (event, ui) {
     $(".ui-dialog-titlebar-close", $(this).parent()).hide();
  },
	buttons: {
		'取消': function() {
			$('#xinzengyh').dialog('close');
		},
		'确认': function() {		//点击确定时调用的方法

		},
	},
	width: 450,
	height: 300,
	show: 'scale',
	hide: 'clip',
	draggable: false,  		//不可以移动对话框
	resizable: false,		//不可以调整对话框大小
	modal: true,			//不可以动对话框以外的网页
	closeText : '关闭',
});


$(function() {
	$('#xinzeng1').button();
	$('#xinzengyh1').dialog({
		autoOpen: false,
	});
	$('#xinzeng1').click(function() {
		$('#xinzengyh1').dialog('open');
	});
	

});
$("#xinzengyh1").dialog({
	autoOpen: false,
	closeOnEscape: false,
	title: '新增商品',
	open: function (event, ui) {
     $(".ui-dialog-titlebar-close", $(this).parent()).hide();
  },
	buttons: {
		'取消': function() {
			$('#xinzengyh1').dialog('close');
		},
		'确认': function() {		//点击确定时调用的方法
			var a1=	document.getElementById("game").value;
			var a2=	document.getElementById("xxi").value;
			var a3=	document.getElementById("jiage").value;
			window.location.href = "/dome/Houtaijia1Servlet?game="+a1+"&xxi="+a2+"&jiage="+a3;
		},
	},
	width: 450,
	height: 300,
	show: 'scale',
	hide: 'clip',
	draggable: false,
	resizable: false,
	modal: true,
	closeText : '关闭',
});


$(function() {
	$('.xg2').button();
	$('.xiugai2').dialog({
		autoOpen: false,
	});
	$('.xg2').click(function() {
		$('.xiugai2').dialog('open');
	});

});
$(".xiugai2").dialog({
	autoOpen: false,
	closeOnEscape: false,
	title: '修改商品信息',
	open: function (event, ui) {
		$(".ui-dialog-titlebar-close", $(this).parent()).hide();
	},
	buttons: {
		'取消': function() {
			$('.xiugai2').dialog('close');
		},
		'保存': function() {
			//点击确定时调用的方法
		},
	},
	width: 450,
	height: 300,
	show: 'blind',
	hide: 'blind',
	draggable: false,
	resizable: false,
	modal: true,
	closeText : '关闭',
});



$(function() {
	$('.xg1').button();
	$('.xiugai1').dialog({
		autoOpen: false,
	});
	$('.xg1').click(function() {

		// this.nextSibling.childNodes[1].firstChild.value = this.parentNode.parentNode.childNodes[1].innerHTML+"";
		// this.nextSibling.childNodes[2].firstChild.value = this.parentNode.parentNode.childNodes[2].innerHTML+"";
		// this.nextSibling.childNodes[3].firstChild.value = this.parentNode.parentNode.childNodes[3].innerHTML+"";
		var str = $('.xiugai1').dialog('open');
	});


});
$(".xiugai1").dialog({
	autoOpen: false,
	closeOnEscape: false,
	title: '修改用户信息',
	open: function (event, ui) {
		$(".ui-dialog-titlebar-close", $(this).parent()).hide();
	},
	buttons: {
		'取消': function() {
			$('.xiugai1').dialog('close');
		},
		'保存': function() {

			//点击确定时调用的方法
		},
	},
	width: 450,
	height: 300,
	show: 'blind',
	hide: 'blind',
	draggable: false,
	resizable: false,
	modal: true,
	closeText : '关闭',
});





$(function() {
	$('.xg3').button();
	$('.xiugai3').dialog({
		autoOpen: false,
	});
	$('.xg3').click(function() {
		$('.xiugai3').dialog('open');
	});
	

});
$(".xiugai3").dialog({
	autoOpen: false,
	closeOnEscape: false,
	title: '修改订单信息',
	open: function (event, ui) {
     $(".ui-dialog-titlebar-close", $(this).parent()).hide();
},
	buttons: {
		'取消': function() {
			$('.xiugai3').dialog('close');
		},
		'保存': function() {
												//点击确定时调用的方法
		},
	},
	width: 450,
	height: 300,
	show: 'blind',
	hide: 'blind',
	draggable: false,
	resizable: false,
	modal: true,
	closeText : '关闭',
});