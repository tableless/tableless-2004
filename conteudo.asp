<%response.redirect "default.asp" '?p=" & request("p")%>

<!-- include file="cabecalho.asp" -->
<div id="geralhome">
<!-- include file="topo.asp" -->
	<div id="esquerda">
		<!-- include file="menu.asp" -->
	</div>

	<div id="direita">
		<!-- include file="sites.asp" -->
	</div>

	<div id="blog">
	<%'=geraBlog()%>

		<%'=paginacao%>
	
	</div>
<br />
<!-- include file="rodape.asp" -->

