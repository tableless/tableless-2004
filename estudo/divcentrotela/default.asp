	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">

<h2>Objeto no centro da tela</h2>
<p>
	Uma das d�vidas mais freq�entes � esta: Como fazer para que um objeto fique no centro da tela usando css?<br />
	A resposta est� nos passos abaixo!
</p>

<h2>Colocando a imagem:</h2>
<p>
	Neste exemplo vamos usar uma imagem, mas voc� pode perfeitamente usar um div, o processo � o mesmo.
	Coloque na imagem (ou no div) um nome de ID... Colocamos neste exemplo o ID com nome "centro".
</p>
<p>
	&lt;img src="imagem.gif" id="centro" /&gt;
</p>
<p>
	<a href="passo1.html">Veja o html deste passo.</a>

</p>

<h2>Definindo as dimens�es do objeto:</h2>
<p>
	Agora, no css, defina as dimens�es do objeto (imagem ou div).<br />
	Nossa imagem tem 100 x 100 px's, ent�o vamos definir no css que a largura ser� de 100px (width:100px;) e que a altura tamb�m ser� de 100px (height:100px;).
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
	Estamos quase no final, voc� pode perceber que o objeto est� um pouco desalinhado do centro. Vamos agora posicion�-lo... � aqui come�a o truque.<br />
	Defina para nosso objeto, uma posi��o absoluta (position:absolute;), ele dever� ficar a 50% de dist�ncia do topo (top:50%;) e 50% de dist�ncia do lado esquerdo do documento (left:50%;).<br />
	O css n�o usa o centro do objeto como refer�ncia para o posicionamento, mas sim as extremidades, portanto, o que ficar� no centro depois deste c�digo, ser� o canto esquerdo superior do objeto.</p>
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
	Eis o truque para tirar a diferen�a, n�o � nada de outro mundo.<br />
	Voc� ir� definir ao objeto duas margens negativas... a margem do topo (margin-top) e a margem da esquerda (margin-left). Na margem do topo, voc� simplesmente colocar� um valor negativo, este valor ser� a metade da altura do objeto, neste caso, ser� -50px (margin-top:-50px;) e no lado esquerdo voc� far� a mesma coisa, mas o valor ser� a metade da largura do objeto, neste caso -50px (margin-left:-50px;).</p>
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