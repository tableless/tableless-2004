	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">
	<h2>Trocando o Layout de seu Site de Forma Dinâmica 2</h2>
<p>
Este é um artigo de complementação do original <a href="http://www.tableless.com.br/artigos/switcher.asp">"Trocando o Layout de seu Site de Forma Dinâmica"</a>.
</p>
<p>
O uso do CSS Switcher é uma ferramenta de fácil aplicação e de grande usabilidade em um website. Muitos programadores aderiram ao uso de um código de switcher em seus websites e aproveitam a portabilidade de seus conteúdos alterando o layout sobre eles e promovendo uma maior interatividade com o usuário.
</p>
<p>
Por exemplo: <a href="http://www.sabadonaestrada.com.br">http://www.sabadonaestrada.com.br/</a> e <a href="http://www.ana.beskow.nom.br">http://www.ana.beskow.nom.br</a> .
</p>
<p>
As vantagens do uso de um CSS Switcher vão além da facilidade da instalação, incluindo também as características de ser cross-browser, server-side ou client-side (dependendo do tipo de linguagem que o programador melhor domina), guardar a preferência do usuário em cookies e da simples manutenção.
</p>
<p>
Mesmo assim alguns usuários (inclusive eu) encontraram algumas dificuldades com o perfeito funcionamento do CSS Switcher na sua versão server-side, ou seja, na linguagem PHP. Esta dificuldade se caracteriza pela não troca do layout do site após o clique no link do novo layout desejado, obrigando o usuário a solicitar um reload na página ou reiniciar seu browser para que o novo layout escolhido fosse visualizado.
</p>
<p>
A principal causa desse comportamento inadequado do CSS Switcher são os provedores que usam proxies (como a AOL), os caches de redes internas e os caches de servidores, além de softwares de controle de navegação como o Squid.
</p>
<p>
São raros os relatos de usuários do CSS Switcher em javascript com esse tipo de problema, simplesmente porque esta versão do switcher é client-side. Então para os usuários da versão server-side, fui pesquisar uma solução para o não funcionamento do código nas situações descritas acima.
</p>
<p>
As soluções haviam já sido amplamente discutidas na List-a-Part (http://www.alistapart.com). De todas as sugeridas, funcionam muito bem resolvendo o problema e são de fácil instalação essas duas:
</p>

<h3>1)Mesmo declarando a 'meta no-cache' em seu website, adicione as seguintes linhas na seção PHP:</h3>

<p>
&lt;?php<br />
Header("Cache-control: private, no-cache");<br />
Header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); //Data passada<br />
Header("Pragma: no-cache");<br />
?>
</p>
<p>
Isso fará com que sua página realmente não seja guardada no cache do servidor. Também fará que browsers que teiman em usar um certo nível de cache como o Internet Explorer (qualquer versão) não atrapalhem seu CSS Switcher.
</p>

<h3>2)Melhore e refine a passagem de dados da página para o switcher.php:</h3>

<p>
Adicione no arquivo switcher.php as seguintes linhas:
</p>
<p>
$set=$_GET['set'];
$set=preg_replace('#[^a-zA-Z0-9_-]#', '', $set);
</p>
<p>
Isto eliminará qualquer caractere que não seja alfanumérico na hora da transmissão da solicitação de troca de layout para o switcher.php. O arquivo switcher.php então ficará assim:
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
Com isso sanamos esse problema e mentivemos o aplicativo simples e de fácil instalação.
</p>
<p>
Recomendo fortemente que, mesmo que você não tenha tido problemas com o switcher CSS, e esteja usando-o na linguagem PHP, faça estas alterações com a finalidade de evitar problemas futuros e melhorar seu código.
</p>
		<hr />
		<blockquote>
			That's all bikers! ;)<br />
			Diogenes de Oliveira Silva<br />
			<a href="http://www.sabadonaestrada.com.br">http://www.sabadonaestrada.com.br</a>
		</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

