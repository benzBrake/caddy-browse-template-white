function addPjaxToMd() {
	$('a', $("#browse")).each(function() {
		var innerText = $(this).html() + "";
		var _arr = innerText.split('.');
		if (innerText.length > 2 && _arr[_arr.length-1] == "md") {
			$(this).addClass('pjax');
		}
	});
}
function breadcrumbs() {
	var url = $(location).attr('href').split("?")[0];
	var _arr = url.split(".");
	if (url.length > 3 && _arr.length > 1 && _arr[_arr.length - 1] == "md") {
		$('a:not(.home)', $("#browse")).remove();
		var url_withoutMethod = url.split("//")[1];
		var uri = url_withoutMethod.substring(url_withoutMethod.indexOf("/") + 1);
		console.log(uri);
		var path = "";
		uri.split("/").forEach(function(item, index) {
            		path += "/" +  item;
            		$('#breadcrumbs').append('<li><a class="pjax" href="' + path +'">' + item +'</a></li>');
    		});
	}
}
$('pre').addClass('prettyprint');
PR.prettyPrint();
addPjaxToMd();
breadcrumbs();
// PJAX
$(document).pjax('#body a.pjax:not(a[target="_blank"], a[no-pjax])', {
	container: '#body',
	fragment: '#body',
	timeout: 8000
}).on('pjax:send', function() {
	NProgress.start(); // 进度条
}).on('pjax:complete', function() {
	NProgress.done();
	$('pre').addClass('prettyprint'); // 代码高亮
	PR.prettyPrint();
	addPjaxToMd();
	breadcrumbs();
});
