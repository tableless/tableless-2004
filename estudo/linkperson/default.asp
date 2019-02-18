	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">

<h2>Links com Underline personalizado</h2>
<p>
	Cansado dos links decorados com uma linha simples? Então este pequeno tutorial é para você. Vamos aprender aqui a fazer links <a href="http://www.tableless.com.br/estudo/linkperson/passo3.html">personalizados</a> como este!
</p>
<h2>Primeiro faça um link! :-)</h2>
<p>
	Faça um arquivo HTML. Depois de ter escrito toda a estrutura do documento, faça um link! :-)
</p>
<p>
	<a href="passo1.html">Veja o html deste passo.</a>
</p>
<h2>Agora no css</h2>
<p>
	Feito isso, vamos agora pro CSS. Primeiramente, defina que os links não deverão underline (<a href="http://www.w3.org/TR/REC-CSS2/text.html#propdef-text-decoration" title="Clique para ver a referência desta propriedade no site da W3C">text-decoration</a>:none;), logo depois, coloque um <a href="http://www.w3.org/TR/REC-CSS2/box.html#propdef-padding-bottom" title="Clique para ver a referência desta propriedade no site da W3C">padding-bottom</a>:3px;
</p>
<p>
	a {<br />
	&nbsp;&nbsp;&nbsp;text-decoration:none;<br />
	&nbsp;&nbsp;&nbsp;padding-bottom:3px;<br />
	}
</p>
<p>
	<a href="passo2.html">Veja o html deste passo.</a>
</p>
<h2>Finalizando</h2>
<p>
	Para terminar, faça o seguinte: Defina que o <a href="http://www.w3.org/TR/REC-CSS2/colors.html#propdef-background" title="Clique para ver a referência desta propriedade no site da W3C">background</a> do link quando se passar o mouse seja a imagem que você fez para ser a linha personalizada. Coloque este  <a href="http://www.w3.org/TR/REC-CSS2/colors.html#propdef-background" title="Clique para ver a referência desta propriedade no site da W3C">background</a> para <a href="http://www.w3.org/TR/REC-CSS2/colors.html#propdef-background-repeat" title="Clique para ver a referência desta propriedade no site da W3C">repetir</a> somente na horizontal, e que ele fique <a href="http://www.w3.org/TR/REC-CSS2/colors.html#propdef-background-position" title="Clique para ver a referência desta propriedade no site da W3C">alinhado</a> por baixo. Assim:
</p>
<p>
a:hover {<br />
&nbsp;&nbsp;&nbsp;background-image:url("link.gif");<br />
&nbsp;&nbsp;&nbsp;background-repeat:repeat-X;<br />
&nbsp;&nbsp;&nbsp;background-position:bottom;<br />
}
</p>
<p>
	<a href="passo3.html">Ver resultado.</a>
</p>
<p><br />
	Aqui, fizemos que underline personalizado aparecesse somente quando fosse passado o mouse, mas você pode personalizar mais, de acordo com sua imaginação.
</p>
<p>
	Dê uma olhada em algumas experiências:<br />
	<a href="http://www.tableless.com.br/estudo/linkperson/" class="link1">Exemplo</a> de link 1. 
	<a href="http://www.tableless.com.br/estudo/linkperson/" class="link2">Exemplo </a>de link 2. 
</p>
<h2>Referências</h2>
<p>
	Este tutorial foi baseado <a href="http://www.alistapart.com/articles/customunderlines/">neste tutorial</a> do site <a href="http://www.alistapart.com/">ALA - A List Apart</a>
</p>
	</div>

<!-- #include file="../../rodape.asp" -->