	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">

<h2>Objeto no centro da tela</h2>
<p>
	Uma das dúvidas mais freqüentes é esta: Como fazer para que um objeto fique no centro da tela usando css?<br />
	A resposta está nos passos abaixo!
</p>

<h2>Colocando a imagem:</h2>
<p>
	Neste exemplo vamos usar uma imagem, mas você pode perfeitamente usar um div, o processo é o mesmo.
	Coloque na imagem (ou no div) um nome de ID... Colocamos neste exemplo o ID com nome "centro".
</p>
<p>
	&lt;img src="imagem.gif" id="centro" /&gt;
</p>
<p>
	<a href="passo1.html">Veja o html deste passo.</a>

</p>

<h2>Definindo as dimensões do objeto:</h2>
<p>
	Agora, no css, defina as dimensões do objeto (imagem ou div).<br />
	Nossa imagem tem 100 x 100 px's, então vamos definir no css que a largura será de 100px (width:100px;) e que a altura também será de 100px (height:100px;).
</p>
<p>
	#centro {<br />
	&nbsp;&nbsp;&nbsp;width:100px;<br />
	&nbsp;&nbsp;&nbsp;height:100px;<br />
	}<br /><br />
</p>
<p>
	<a href="passo2.html">Veja o html deste passo.</a>
</p>

<h2>Alinhando:</h2>
<p>
	Estamos quase no final, você pode perceber que o objeto está um pouco desalinhado do centro. Vamos agora posicioná-lo... É aqui começa o truque.<br />
	Defina para nosso objeto, uma posição absoluta (position:absolute;), ele deverá ficar a 50% de distância do topo (top:50%;) e 50% de distância do lado esquerdo do documento (left:50%;).<br />
	O css não usa o centro do objeto como referência para o posicionamento, mas sim as extremidades, portanto, o que ficará no centro depois deste código, será o canto esquerdo superior do objeto.</p>
<p>
	#centro {<br />
	&nbsp;&nbsp;&nbsp;width:100px;<br />
	&nbsp;&nbsp;&nbsp;height:100px;<br />
	&nbsp;&nbsp;&nbsp;position:absolute;<br />
	&nbsp;&nbsp;&nbsp;top:50%;<br />
	&nbsp;&nbsp;&nbsp;left:50%;<br />
	}</p>
<p>
	<a href="passo3.html">Veja o html deste passo.</a>
</p>

<h2>O grande final:</h2>
<p>
	Eis o truque para tirar a diferença, não é nada de outro mundo.<br />
	Você irá definir ao objeto duas margens negativas... a margem do topo (margin-top) e a margem da esquerda (margin-left). Na margem do topo, você simplesmente colocará um valor negativo, este valor será a metade da altura do objeto, neste caso, será -50px (margin-top:-50px;) e no lado esquerdo você fará a mesma coisa, mas o valor será a metade da largura do objeto, neste caso -50px (margin-left:-50px;).</p>
<p>
	#centro {<br />
	&nbsp;&nbsp;&nbsp;width:100px;<br />
	&nbsp;&nbsp;&nbsp;height:100px;<br />
	&nbsp;&nbsp;&nbsp;position:absolute;<br />
	&nbsp;&nbsp;&nbsp;top:50%;<br />
	&nbsp;&nbsp;&nbsp;left:50%;<br />
	&nbsp;&nbsp;&nbsp;margin-top:-50px;<br />
	&nbsp;&nbsp;&nbsp;margin-left:-50px;<br />
	}</p>
<p>
	<a href="passo4.html">Veja o html final.</a>
</p>
	</div>

<!-- #include file="../../rodape.asp" -->