	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">

<h2>Fazendo um menu horizontal</h2>
<p>
	Para fazer um menu <a href="passo5.html">horizontal</a> que seja f�cil de personalizar e de fazer manuten��o?<br />
	Siga os passos abaixo, e descubra como � f�cil.
</p>

<h2>Estrutura:</h2>
<p>
Primeiramente fa�a um div e atribua uma ID para este div, neste exemplo nosso div se chamar� "menu". Dentro deste div, fa�a uma lista, esta lista deve conter as op��es de seu menu:<br /><br />

&lt;div id="menu"&gt;<br />
&nbsp;&nbsp;&lt;ul&gt;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=""&gt;Primeiro&lt;/a&gt;&lt;/li&gt;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=""&gt;Segundo&lt;/a&gt;&lt;/li&gt;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=""&gt;Terceiro&lt;/a&gt;&lt;/li&gt;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=""&gt;Quarto&lt;/a&gt;&lt;/li&gt;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=""&gt;Quinto&lt;/a&gt;&lt;/li&gt;<br />
&nbsp;&nbsp;&lt;/ul&gt;<br />
&lt;/div&gt;<br /><br />
<a href="passo1.html">Veja o html deste passo.</a>
</p>

<h2>Come�ando a formata��o:</h2>
<p>
Agora que j� fizemos a estrutura do menu, vamos format�-lo com css.
Primeiro, para podermos trabalhar melhor, vamos tirar o margin (margin:0px;), o padding (padding:0px); e os Bullets das op��es (list-style:none;) da tag UL. Queremos que o UL seja uma barra de navega��o certo? Ent�o vamos fazer ele flutuar � esquerda (float:left), depois damos a ele a largura de 100% (width:100%;), isso far� com que ele vire uma bloco. Veja o c�digo css atribu�do � tag UL:<br /><br />

#menu ul {<br />
&nbsp;&nbsp;&nbsp;padding:0px;<br />
&nbsp;&nbsp;&nbsp;margin:0px;<br />
&nbsp;&nbsp;&nbsp;float: left;<br />
&nbsp;&nbsp;&nbsp;width: 100%;<br />
&nbsp;&nbsp;&nbsp;background-color:#EDEDED;<br />
&nbsp;&nbsp;&nbsp;list-style:none;<br />
}<br />
<br />
<a href="passo2.html">Veja o html deste passo.</a>
</p>
<h2>Terceiro:</h2>
<p>
Nosso menu ainda n�o est� horizontal... agora � hora de resolver isso.
Para o nosso menu ficar horizontal, temos que fazer as suas op��es ficarem uma ao lado da outra... para isso, basta atribuir um display:inline; para a tag LI... Isso far� todas as op��es ficarem em uma linha horizontal:<br /><br />

#menu ul li { display: inline; }<br /><br />

<a href="passo3.html">Veja o html deste passo.</a>
</p>
<h2>Deixando o menu na horizontal:</h2>
<p>
�timo. Estamos quase acabando nosso menu horizontal, agora falta pouco.
Precisamos apenas formatar os links do menu para que eles n�o fiquem t�o pr�ximos um do outro. No css, fa�a que todos os links que est�o dentro da tag LI (#menu ul li a) flutuem � esquerda (float:left;), isso � necess�rio para que os links se transformem em bloco. Agora, d� um espa�o entre a borda do menu e o texto, para isso use o padding (padding: 2px 10px;).
Voc� pode aproveitar para definir o "visual" que dever� ter o link: cor de fundo, letra, etc...
Veja o c�digo css que escrevemos neste passo.<br /><br />

#menu ul li a {<br />
&nbsp;&nbsp;&nbsp;padding: 2px 10px;<br />
&nbsp;&nbsp;&nbsp;float:left;<br />
&nbsp;&nbsp;&nbsp;/* visual do link */<br />
&nbsp;&nbsp;&nbsp;background-color:#EDEDED;<br />
&nbsp;&nbsp;&nbsp;color: #333;<br />
&nbsp;&nbsp;&nbsp;text-decoration: none;<br />
&nbsp;&nbsp;&nbsp;border-bottom:3px solid #EDEDED;<br />
}<br />
<br />
<a href="passo4.html">Veja o html deste passo.</a>
</p>
<h2>Vamos ver no que deu!</h2>
<p>
Para finalizar, vamos apenas definir o que dever� acontecer com o link quando o usu�rio passar o mouse. Este passo dispensa explica��es.<br /><br />

#menu ul li a:hover {<br />
&nbsp;&nbsp;&nbsp;background-color:#D6D6D6;<br />
&nbsp;&nbsp;&nbsp;color: #6D6D6D;<br />
&nbsp;&nbsp;&nbsp;border-bottom:3px solid #EA0000;<br />
}<br /><br />

<a href="passo5.html">Ver menu finalizado.</a>
</p>
	</div>

<!-- #include file="../../rodape.asp" -->