<script language="javascript" runat="server">
sitesrecomendados=new Array()
function siterecomendado(){
	var i=parseInt(Math.random()*10000)%sitesrecomendados.length
	return "<a href=\""+sitesrecomendados[i][1]+"\">"+sitesrecomendados[i][0]+"</a>"
}
function adRec(nome,url){
	sitesrecomendados[sitesrecomendados.length]=[nome,url]
}
</script>
<script language="javascript" runat="server" src="recomendados.js">
</script>
<%=siterecomendado()%>
