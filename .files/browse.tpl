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
	<title>{{.Name}}</title>
</head>
<body>
	<div id="body">
	<header>
	<ul id="breadcrumbs">
		{{range $i, $crumb := .Breadcrumbs}}
		{{if eq 0 $i}}
		<li><a class="home pjax" href="{{html $crumb.Link}}">首页</a></li>
		{{else}}
		<li><a class="pjax" href="{{html $crumb.Link}}">{{html $crumb.Text}}</a></li>
		{{end}}
		{{end}}
	</ul>
	</header>
	<section id="browse"G>
		<table>
			<tr>
				<th class="col-icon"></th>
				<th class="col-name">
					{{if and (eq .Sort "name") (ne .Order "desc")}}
					<a class="pjax" href="?sort=name&order=desc">文件名 &#9650;</a>
					{{else if and (eq .Sort "name") (ne .Order "asc")}}
					<a class="pjax" href="?sort=name&order=asc">文件名 &#9660;</a>
					{{else}}
					<a class="pjax" href="?sort=name&order=asc">文件名</a>
					{{end}}
				</th>
				<th class="col-size">
					{{if and (eq .Sort "size") (ne .Order "desc")}}
					<a class="pjax" href="?sort=size&order=desc">大小 &#9650;</a>
					{{else if and (eq .Sort "size") (ne .Order "asc")}}
					<a class="pjax" href="?sort=size&order=asc">大小 &#9660;</a>
					{{else}}
					<a class="pjax" href="?sort=size&order=asc">大小</a>
					{{end}}
				</th>
				<th class="col-time">
					{{if and (eq .Sort "time") (ne .Order "desc")}}
					<a class="pjax" href="?sort=time&order=desc">修改时间 &#9650;</a>
					{{else if and (eq .Sort "time") (ne .Order "asc")}}
					<a class="pjax" href="?sort=time&order=asc">修改时间 &#9660;</a>
					{{else}}
					<a class="pjax" href="?sort=time&order=asc">修改时间</a>
					{{end}}
				</th>
				</tr>
				{{if .CanGoUp}}
				<tr class="goup">
					<td>
						<svg height="16" width="12" xmlns="http://www.w3.org/2000/svg"><path d="M6 2.5l-6 4.5 6 4.5v-3c1.73 0 5.14 0.95 6 4.38 0-4.55-3.06-7.05-6-7.38v-3z" /></svg>
					</td>
					<td>
						<a href=".." class="pjax" title="返回上一层">..</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				{{end}}
				{{range .Items}}
				<tr class="file">
					<td>
						{{if .IsDir}}<svg height="16" width="14" xmlns="http://www.w3.org/2000/svg"><path d="M13 4H7v-1c0-0.66-0.31-1-1-1H1c-0.55 0-1 0.45-1 1v10c0 0.55 0.45 1 1 1h12c0.55 0 1-0.45 1-1V5c0-0.55-0.45-1-1-1z m-7 0H1v-1h5v1z" /></svg>
						{{else}}<svg height="16" width="12" xmlns="http://www.w3.org/2000/svg"><path d="M6 5H2v-1h4v1zM2 8h7v-1H2v1z m0 2h7v-1H2v1z m0 2h7v-1H2v1z m10-7.5v9.5c0 0.55-0.45 1-1 1H1c-0.55 0-1-0.45-1-1V2c0-0.55 0.45-1 1-1h7.5l3.5 3.5z m-1 0.5L8 2H1v12h10V5z" /></svg>{{end}}
					</td>
					<td>
						<a href="{{.URL}}" class="name{{if .IsDir}} pjax{{end}}">{{.Name}}</a>
					</td>
					<td>{{if not .IsDir}}{{.HumanSize}}{{end}}</td>
					<td>{{.HumanModTime "2006.02.01 15:04:05"}}</td>
				</tr>
				{{end}}
		</table>
	</section>
	<footer id="footer">
		<center>Power by <a title="Ryan's Blog" href="https://doufu.ru" target='_blank'>Ryan</a></center>
	</footer>
	</div>
	<script type="text/javascript" src="//{{.Host}}:{{.Port}}/.files/rebuild.js"></script>
</body>
</html>
