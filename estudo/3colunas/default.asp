	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">
		<h2>Layout simples com 3 Colunas</h2>

		<p>Para fazer um <a href="http://www.tableless.com.br/estudo/3colunas/final.htm">layout simples de 3 colunas</a>, iremos utilizar, basicamente as propriedades 'float' e 'margin'. Separe tempo para visitar os sites recomendados que estão listados no final deste artigo. </p>

		<h2>Estrutura do documento HTML</h2>

		<p>Faça a seguinte estrutura HTML:</p>
		
<xmp><div id="geral">
     <h1>Layout com 3 Colunas</h1>
     <div id="esquerda">
          Conteúdo da coluna da esquerda
     </div>

     <div id="direita">
          Conteúdo da coluna da direita
     </div>

     <div id="conteudo">
          <p>Conteúdo</p>
     </div>
</div></xmp>

		<p><a href="http://www.tableless.com.br/estudo/3colunas/passo1.html">Resultado</a> do passo 1.</p>
		<h2>Começando o código CSS</h2>
		<p>Agora, vamos partir para a parte mais divertida, o código CSS.<br />
		Fazendo isso, definiremos uma largura para o div 'geral'. È ele que vai delimitar a área de nosso pequeno layout.</p>

<xmp>#geral {
	width:700px;
}</xmp> 

		<p>Então, vamos atribuir um valor de largura para a coluna da esquerda e da direita.</p>
		
<xmp>#esquerda, #direita {
	width:150px;
}</xmp>
		
		<p>E vamos atribuir uma largura para a coluna do meio, a coluna de conteúdo.</p>
		
<xmp>#conteudo {
	width:370px;
}</xmp>

		<p><a href="http://www.tableless.com.br/estudo/3colunas/passo2.html">Resultado</a> do passo 2.</p>

		<p>Os valores da propriedade float são none, left e right, sendo none o default.<br />
		Definiremos um 'float:left;' para div da esquerda, e um 'float:right;' para div da direita.</p>
<xmp>#esquerda {
	float:left;
}

#direita {
	float:right;
}</xmp>
		<p><a href="http://www.tableless.com.br/estudo/3colunas/passo3.html">Resultado</a> do passo 3.</p>
		<p>Como podemos perceber, o layout já está pronto. Vamos colocar um pequeno texto dos divs para podermos visualizar melhor.</p>

		<p><a href="http://www.tableless.com.br/estudo/3colunas/passo4.html">Resultado</a> do passo 4.</p>

		<p>Como você pode ver, o float do div 'esquerda' tem efeito apenas para o texto do div 'conteudo', fazendo o texto fluir. Queremos que o div 'conteudo' se alinhe ao centro. Então, para resolver isto, vamos aplicar um 'margin-left:160px;'.  </p>

<xmp>#conteudo {
	margin-left:160px;
}</xmp>
		<p><a href="http://www.tableless.com.br/estudo/3colunas/final.html">Resultado</a> final.</p>
		<p>Bem, a estrutura já está feita, agora, é só você criar um estilo para deixar o layout mais bonito, e para modelar à sua necessidade. </p>

		<h2>Leitura recomendada:</h2>

<ul>
     <li><a href="http://www.maxdesign.com.au/presentation/liquid/">http://www.maxdesign.com.au/presentation/liquid/</a></li>
     <li><a href="http://css-discuss.incutio.com/?page=CssLayouts">http://css-discuss.incutio.com/?page=CssLayouts</a></li>
     <li><a href="http://www.glish.com/css/">http://www.glish.com/css/</a></li>
     <li><a href="http://www.bluerobot.com/web/layouts/">http://www.bluerobot.com/web/layouts/</a></li>
     <li><a href="http://www.ssi-developer.net/main/templates/">http://www.ssi-developer.net/main/templates/</a></li>
     <li><a href="http://www.csscreator.com/version2/pagelayout.php">http://www.csscreator.com/version2/pagelayout.php</a></li>
</ul>


	</div>
	<!-- #include file="../../rodape.asp" -->