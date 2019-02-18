	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">

<h2>Fazendo um menu horizontal</h2>
<p>
	Para fazer um menu <a href="passo5.html">horizontal</a> que seja fácil de personalizar e de fazer manutenção?<br />
	Siga os passos abaixo, e descubra como é fácil.
</p>

<h2>Estrutura:</h2>
<p>
Primeiramente faça um div e atribua uma ID para este div, neste exemplo nosso div se chamará "menu". Dentro deste div, faça uma lista, esta lista deve conter as opções de seu menu:<br /><br />

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

<h2>Começando a formatação:</h2>
<p>
Agora que já fizemos a estrutura do menu, vamos formatá-lo com css.
Primeiro, para podermos trabalhar melhor, vamos tirar o margin (margin:0px;), o padding (padding:0px); e os Bullets das opções (list-style:none;) da tag UL. Queremos que o UL seja uma barra de navegação certo? Então vamos fazer ele flutuar à esquerda (float:left), depois damos a ele a largura de 100% (width:100%;), isso fará com que ele vire uma bloco. Veja o código css atribuído à tag UL:<br /><br />

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
Nosso menu ainda não está horizontal... agora é hora de resolver isso.
Para o nosso menu ficar horizontal, temos que fazer as suas opções ficarem uma ao lado da outra... para isso, basta atribuir um display:inline; para a tag LI... Isso fará todas as opções ficarem em uma linha horizontal:<br /><br />

#menu ul li { display: inline; }<br /><br />

<a href="passo3.html">Veja o html deste passo.</a>
</p>
<h2>Deixando o menu na horizontal:</h2>
<p>
Ótimo. Estamos quase acabando nosso menu horizontal, agora falta pouco.
Precisamos apenas formatar os links do menu para que eles não fiquem tão próximos um do outro. No css, faça que todos os links que estão dentro da tag LI (#menu ul li a) flutuem à esquerda (float:left;), isso é necessário para que os links se transformem em bloco. Agora, dê um espaço entre a borda do menu e o texto, para isso use o padding (padding: 2px 10px;).
Você pode aproveitar para definir o "visual" que deverá ter o link: cor de fundo, letra, etc...
Veja o código css que escrevemos neste passo.<br /><br />

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
Para finalizar, vamos apenas definir o que deverá acontecer com o link quando o usuário passar o mouse. Este passo dispensa explicações.<br /><br />

#menu ul li a:hover {<br />
&nbsp;&nbsp;&nbsp;background-color:#D6D6D6;<br />
&nbsp;&nbsp;&nbsp;color: #6D6D6D;<br />
&nbsp;&nbsp;&nbsp;border-bottom:3px solid #EA0000;<br />
}<br /><br />

<a href="passo5.html">Ver menu finalizado.</a>
</p>
	</div>

<!-- #include file="../../rodape.asp" -->