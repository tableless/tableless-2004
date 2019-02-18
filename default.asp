<%
subdominio=Request.ServerVariables("HTTP_HOST")
subdominio=replace(subdominio, ".tableless.com.br", "")
subdominio=replace(subdominio, "www", "")
subdominio=replace(subdominio, ".", "")
subdominio=lcase(trim(subdominio))

'if subdominio="saude" then
'	Server.Execute "/saude/dicas.asp"
'	Response.End
'end if

if subdominio<>"" then Response.Redirect "http://www.tableless.com.br/" & subdominio & "/"
'If Request.ServerVariables("HTTP_HOST")="eyesmiles.tableless.com.br" then Response.Redirect "http://www.tableless.com.br/eyesmiles/" 
%>
<!-- #include file="funcoesconteudo.asp" --><%txtBlog=geraBlog()%><script language="javascript" runat="server" src="banners.js"></script><?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt" lang="pt">

<head>
	<title>Tableless [ Design CSS XHTML HTML Web Standards ]</title>

	<meta name="resource-type" content="document" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta name="revisit-after" content="1" />
	<meta name="classification" content="Internet" />
	<meta name="description" content="Tableless - Site sobre tableless, mostramos como é fácil construir sites com os padrões da W3C." />
	<meta name="keywords" content="tableless, sites tableless, semantica, webstandards, standards, browsers, compatibilidade, XML, XHTML, HTML, CSS, ASP, usabilidade, acessibilidade, resultados, web, internet" />
	<meta name="robots" content="ALL" />
	<meta name="distribution" content="Global" />
	<meta name="rating" content="General" />
	<meta name="author" content="Diego Alberto Eis, Elcio Luiz Ferreira" />
	<meta name="language" content="pt-br" />
	<meta name="doc-class" content="Completed" />
	<meta name="doc-rights" content="Public" />

	<%
	if request("css")<>"" then session("css")=request("css")
	thecss=session("css") & ""
	if thecss="" or thecss="0" then
	%>
	<link rel="stylesheet" type="text/css" href="http://www.tableless.com.br/skins/padrao/cor.css" />
	<style type="text/css"><!--	@import url("http://www.tableless.com.br/skins/est.css"); --></style>
	<%else%>
	<link rel="stylesheet" type="text/css" href="http://<%=thecss%>" />
	<%end if%>
    <link rel="stylesheet" type="text/css" href="http://www.tableless.com.br/skins/mods.css" />
</head>

<body>
<div id="banner">
<h1>Tableless! O jeito certo de construir sites usando Web Standards.</h1>
<p>Este site serve para mostrar para interessados, estudantes ou profissionais que é possível e fácil criar um site TABLELESS acessível, compatível e com design impecável com as especificações do W3C. Utilizando ao máximo a dupla CSS/XHTML e conseguindo resultados acima da média.</p>
	<%
	if boolHome=true then
		Response.Write(rndBanner(0))
	else
		Response.Write(rndBanner(1))
	end if
	%>
</div>
<div id="mestre">

	<h1><a href="http://www.tableless.com.br/" title="Tableless [ Design CSS XHTML HTML Web Standards ]">Tableless! O jeito certo de construir sites usando Web Standards.</a></h1>

	<hr />


	<!-- #include file="menu.asp" -->

 	<!-- #include file="buscador.asp" -->

	<!-- #include file="skin.asp" --> 

	<!-- #include file="recomendado.asp" -->

	<!-- #include file="arquivo.asp" -->  

	<div id="txtcont">
		<%=txtBlog%>
	</div>

	<!-- #include file="sites.asp" -->

<!-- #include file="rodape.asp" -->
