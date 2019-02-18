	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">
	<h2>Trocando o Layout de seu Site de Forma Din�mica 2</h2>
<p>
Este � um artigo de complementa��o do original <a href="http://www.tableless.com.br/artigos/switcher.asp">"Trocando o Layout de seu Site de Forma Din�mica"</a>.
</p>
<p>
O uso do CSS Switcher � uma ferramenta de f�cil aplica��o e de grande usabilidade em um website. Muitos programadores aderiram ao uso de um c�digo de switcher em seus websites e aproveitam a portabilidade de seus conte�dos alterando o layout sobre eles e promovendo uma maior interatividade com o usu�rio.
</p>
<p>
Por exemplo: <a href="http://www.sabadonaestrada.com.br">http://www.sabadonaestrada.com.br/</a> e <a href="http://www.ana.beskow.nom.br">http://www.ana.beskow.nom.br</a> .
</p>
<p>
As vantagens do uso de um CSS Switcher v�o al�m da facilidade da instala��o, incluindo tamb�m as caracter�sticas de ser cross-browser, server-side ou client-side (dependendo do tipo de linguagem que o programador melhor domina), guardar a prefer�ncia do usu�rio em cookies e da simples manuten��o.
</p>
<p>
Mesmo assim alguns usu�rios (inclusive eu) encontraram algumas dificuldades com o perfeito funcionamento do CSS Switcher na sua vers�o server-side, ou seja, na linguagem PHP. Esta dificuldade se caracteriza pela n�o troca do layout do site ap�s o clique no link do novo layout desejado, obrigando o usu�rio a solicitar um reload na p�gina ou reiniciar seu browser para que o novo layout escolhido fosse visualizado.
</p>
<p>
A principal causa desse comportamento inadequado do CSS Switcher s�o os provedores que usam proxies (como a AOL), os caches de redes internas e os caches de servidores, al�m de softwares de controle de navega��o como o Squid.
</p>
<p>
S�o raros os relatos de usu�rios do CSS Switcher em javascript com esse tipo de problema, simplesmente porque esta vers�o do switcher � client-side. Ent�o para os usu�rios da vers�o server-side, fui pesquisar uma solu��o para o n�o funcionamento do c�digo nas situa��es descritas acima.
</p>
<p>
As solu��es haviam j� sido amplamente discutidas na List-a-Part (http://www.alistapart.com). De todas as sugeridas, funcionam muito bem resolvendo o problema e s�o de f�cil instala��o essas duas:
</p>

<h3>1)Mesmo declarando a 'meta no-cache' em seu website, adicione as seguintes linhas na se��o PHP:</h3>

<p>
&lt;?php<br />
Header("Cache-control: private, no-cache");<br />
Header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); //Data passada<br />
Header("Pragma: no-cache");<br />
?>
</p>
<p>
Isso far� com que sua p�gina realmente n�o seja guardada no cache do servidor. Tamb�m far� que browsers que teiman em usar um certo n�vel de cache como o Internet Explorer (qualquer vers�o) n�o atrapalhem seu CSS Switcher.
</p>

<h3>2)Melhore e refine a passagem de dados da p�gina para o switcher.php:</h3>

<p>
Adicione no arquivo switcher.php as seguintes linhas:
</p>
<p>
$set=$_GET['set'];
$set=preg_replace('#[^a-zA-Z0-9_-]#', '', $set);
</p>
<p>
Isto eliminar� qualquer caractere que n�o seja alfanum�rico na hora da transmiss�o da solicita��o de troca de layout para o switcher.php. O arquivo switcher.php ent�o ficar� assim:
</p>
<p>

	&lt;?php <br />
	$set = $_GET['set'];<br />
	$set = preg_replace('#[^a-zA-Z0-9_-]#', '', $set);<br />
	setcookie ('sitestyle', $set, time()+31536000, '/', 'www.sabadonaestrada.com.br', '0');<br />
	header("Location: $HTTP_REFERER");<br />
	?><br />

</p>
<p>
Com isso sanamos esse problema e mentivemos o aplicativo simples e de f�cil instala��o.
</p>
<p>
Recomendo fortemente que, mesmo que voc� n�o tenha tido problemas com o switcher CSS, e esteja usando-o na linguagem PHP, fa�a estas altera��es com a finalidade de evitar problemas futuros e melhorar seu c�digo.
</p>
		<hr />
		<blockquote>
			That's all bikers! ;)<br />
			Diogenes de Oliveira Silva<br />
			<a href="http://www.sabadonaestrada.com.br">http://www.sabadonaestrada.com.br</a>
		</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

