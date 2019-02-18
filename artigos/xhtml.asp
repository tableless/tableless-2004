	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

		<h2>Porque escrever um XHTML v�lido?</h2>
		<p>
			Acho que todos j� ouviram falar de Web Sem�ntica, para quem n�o ouviu, em poucas palavras �: Um projeto para organizar e estruturar a informa��o da WEB.
		</p>
			
		<p>
			Ter uma Web com as suas informa��es todas "organizadas" � extremamente importante, isso facilita uma busca pela Web por informa��es mais precisas.
			Para que seu arquivo possa ser lido por m�quinas al�m de humanos � muito importante que voc� escreva um XHTML v�lido, com isso voc� est� fazendo com que as informa��es do seu site fique mais acess�vel para as buscas, contribuindo para o projeto e principalmente melhorando as visitas do seu site.
		</p>
		<h2>DOC o que?!</h2>
		<p>
			O Doctype (Document Type Definition, vulgo DTD) � a primeira coisa que se deve escrever em um arquivo XHTML, ele vai na PRIMEIRA LINHA do seu documento, se voc� quiser ter um XML V�lido, n�o devemos esquec�-lo, ele serve para informar ao browser que tipo de documento ser� visualizado, ok?
			<br /><br />
			Existem 3 tipos:
			<ul>
				<li><b>Strict</b>: Este tipo � usado quando voc� fez um c�digo 100% XHTML, sem erros, deve ser escrito assim:<br />
				&lt;!DOCTYPE html<br />
				PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"<br />
				"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;</li><br /><br />

				<li><b>Transitional</b>: Este � o modo mais usado, voc� o usa quando est� come�ando a migrar do nosso amigo HTML para o poderoso XHTML, sua sintaxe �:<br />
				&lt;!DOCTYPE html<br />
				PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"<br />
				"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;</li><br /><br />

				<li><b>Frameset</b>: � usado quando voc� est� utilizando FRAMES em seu site, se escreve assim:<br />
				&lt;!DOCTYPE html<br />
				PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN"<br />
				"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd"&gt;</li><br /><br />
			</ul>
			</p>
			<p>
			Exemplo:<br /><br />
			&lt;!DOCTYPE html<br />
			PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"<br />
			"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;<br />
			&lt;html&gt;<br />
			&lt;head&gt;<br />
			&lt;title&gt;&lt;/title&gt;<br />
			&lt;/head&gt;<br />
			&lt;body&gt;<br />
			...<br />
			&lt;/body&gt;<br />
			&lt;/html&gt;<br />
		</p>
		<h2>Feche TODAS as tags</h2>
		<p>
			Quem j� escreveu algum XML sabe que ele n�o funciona at� que TODAS as tags estiverem bem fechadas, no HTML era diferente, muitas vezes deix�vamos tags abertas, e ele funcionava que era uma beleza.<br /><br />

			Para se fazer um XHTML v�lido, devemos fechar TODAS as tags:<br />
			<ol>
				<li>N�o devemos esquecer de fechar as tags que estamos carecas de conhecer: &lt;p&gt;&lt;/p&gt;, &lt;b&gt;&lt;/b&gt;, etc...</li><br /><br />

				<li>E n�o devemos esquecer de forma alguma de fechar as tags "solit�rias", assim, ao inv�s de &lt;br&gt; escrevemos &lt;br&gt;&lt;/br&gt;, ou na forma simplificada: &lt;br /&gt;.</li><br /><br />
			</ol>
		</p>
		<p>
			Descobriram que fechando tags desta forma &lt;br/&gt;, n�o se sabe porque estava causando um problema no Netscape, mas apenas colocando um espa�o antes da / o problema � solucionado.
		</p>
		<h2>Use letras min�sculas</h2>
		<p>
			Quem nunca viu um c�digo fonte de um documento HTML escrito assim:<br />
			&lt;A HREF="http://tags.com.letras.min�sculas/" TARGET="_BLANK"&gt; &lt;/A&gt;
			<br />Um documento XHTML deve ter TODAS as tags e seus respectivos atributos escritos com letra min�scula!
		</p>
		<h2>N�o esque�a das "ASPAS"</h2>
		<p>
			Esta regra � bem simples. Todos os atributos XHTML devem conter as benditas "ASPAS".
		</p>
		<h2>Atributo NAME</h2>
		<p>
			O antigo atributo NAME foi substitu�do pelo atributo ID. Se seus usu�rios, clientes, etc, utilizam ainda antigos browsers, voc� pode sem problema nenhum utilizar as duas formas juntas durante neste per�odo em que estamos migrando:<br />
			&lt;img src="imagem.gif" id="imagem" name="imagem" /&gt;
		</p>
		<h2>Atributos sem valor</h2>
		<p>
			N�o devemos esquecer tamb�m os atributos que escrevemos sem valor, por exemplo:
			<br /><br />

			ERRADO:<br />
			&lt;option selected&gt;<br />
			&lt;frame noresize&gt;<br />
			&lt;input checked&gt;<br />
			&lt;input readonly&gt;<br />
			<br />
			CERTO:<br />
			&lt;option selected="selected"&gt;<br />
			&lt;frame noresize="noresize"&gt;<br />
			&lt;input checked="checked"&gt;<br />
			&lt;input readonly="readonly"&gt;<br /><br />

			E assim por diante.
		</p>
		<h2>Quer uma ajudinha?</h2>
		<p>
			Se voc� est� migrando do HTML para o XHTML, o TIDY pode te dar uma forcinha.
			O TIDY � uma ferramenta para validar e consertar c�digos HTML, ele tem op��es que voc� pode escolher qual a vers�o do HTML voc� quer validar, uma dessas op��es � a XHTML.<br /> Se voc� j� est� escrevendo um XHTML e quer que seu c�digo fique livre de todos os erros, o TIDY arruma para voc�.
			<br />Ele foi originalmente desenvolvido por Dave Raggett e hoje � mantido por um projeto de c�digo aberto: SourceForge, por um grupo de volunt�rios.
		</p>

		<h2>�ltimas palavras</h2>
		<p>
			Fazendo todas essas pequenas por�m importantes regras, quer dizer, regras n�o, LEIS, voc� ter� um belo de um documento XHTML v�lido, e acima de tudo, estar� contribuindo para uma WEB melhor.
		</p>
		<p>
		Como eu passei apenas o miolo, navegando nestes links poder�o ser achados mais informa��es a respeito:
		<ul>
			<li><a href="http://www.w3schools.com/xhtml/xhtml_reference.asp" target="_blank">Refer�ncia de XHTML 1.0</a></li>
			<li><a href="http://www.w3schools.com/w3c/" target="_blank">Tutorial da W3C</a></li>
			<li><a href="http://www.w3schools.com/default.asp" target="_blank">W3Schools:</a></li>
			<li><a href="http://www.comciencia.br/reportagens/internet/net08.htm" target="_blank">WebSem�ntica</a></li>
		</ul>
		</p>
		<h2>Notas:</h2>
		<p>
		Para saber se seu documento XHTML � v�lido:<br />
		<a href="http://validator.w3.org" target="_blank">http://validator.w3.org</a>
		<br /><br />
		Tidy:<br />
		<a href="http://tidy.sourceforge.net/" title="Source Forge" target="_blank">http://tidy.sourceforge.net/</a><br />
		<a href="http://www.w3.org/People/Raggett/tidy/" title="Dave Raggett's Original" target="_blank">http://www.w3.org/People/Raggett/tidy/</a>
		</p>

		<!-- #include file="diegoass.asp" -->

	</div>
<!-- #include file="../rodape.asp" -->