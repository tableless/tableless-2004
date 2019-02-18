	<!-- #include file="cab.asp" -->

	<!-- #include file="menu.asp" -->

	<!-- #include file="sites.asp" -->

	<div id="busca" class="box">
		<h3>Busca</h3>
				
		<form action="http://www.tableless.com.br/busca.asp"><input name="q" 
		value="<%=request("q")%>" class="inputext" /><input type="submit" 
		value="Procurar" class="botao" /></form>
		<br clear="all" />
		<!--<p>
		<a href="http://www.google.com.br/search?q=diego+site:www.tableless.com.br">Fazer busca no site inteiro pelo google?</a></p>-->
	</div>

	<hr />
	<!-- #include file="skin.asp" --> 
	<!-- #include file="recomendado.asp" -->
	<!-- #include file="arquivo.asp" --> 
	<!-- #include file="franquia.asp" --> 

	<div id="txtcont">
		<% if false then %><form action="http://www.tableless.com.br/busca.asp"><input name="q" 
		value="<%=request("q")%>" size="40" /><input type="submit" 
		value="Procurar" /></form><% end if %>
		<%fazBusca(request("q"))%>
	</div>
<!-- #include file="rodape.asp" -->
