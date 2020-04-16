<html>
<head>
	<meta charset='UTF-8'>
	<link rel="stylesheet" type="text/css" href="//{{.Host}}:{{.Port}}/.files/google-code-prettify/prettify.css">
	<link rel="stylesheet" type="text/css" href="//{{.Host}}:{{.Port}}/.files/style.css">
	<link rel="stylesheet" type="text/css" href="//{{.Host}}:{{.Port}}/.files/nprogress.css">
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/google-code-prettify/prettify.js"></script>
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/jquery.pjax.js"></script>
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/nprogress.js"></script>
	<title>正在查看：{{.Doc.title}}.md</title>
</head>
<body>
	<div id="body">
	<header>
	<ul id="breadcrumbs">
		<li>
			<a class="home pjax" href="//{{.Host}}:{{.Port}}/" title="首页">首页</a>
		</li>
	</ul>
	</header>
	<section id="markdown">
	{{.Doc.body}}
	</section>
	<footer>
		<center>Power by <a title="Ryan's Blog" href="https://doufu.ru">Ryan</a></center>
	</footer>
	</div>
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/rebuild.js"></script>
</body>
</html>
