<%
	email = request.form("email")
	url = request.form("url")
	if email="" then email="automatico@tableless.com.br"
	Set objmail = Server.CreateObject("CDONTS.NewMail")
	objmail.from = email
	objmail.to = "diego@tableless.com.br"
	objmail.subject = "Sugest�o de Site para Diret�rio Tableless"
	objmail.body = url
	objmail.send
	set objmail=nothing
%>	<!-- #include file="cab.asp" -->
	<%txtBlog=geraBlog()%>

	<!-- #include file="menu.asp" -->

	<!-- #include file="sites.asp" -->

 	<!-- #include file="buscador.asp" -->

		<!-- #include file="recomendado.asp" -->

<!-- #include file="arquivo.asp" -->
		<!-- #include file="franquia.asp" --> 

	

	<div id="txtcont">
<h2>Enviado com sucesso!</h2>

			<p>
				Obrigado pela colabora��o.<br />
				Vamos an�lisar o site e assim que poss�vel, colocaremos o link indicado no diret�rio.
			</p>

	</div>

<!-- #include file="rodape.asp" -->

