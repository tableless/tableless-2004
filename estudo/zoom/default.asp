	<!-- #include file="../../cab.asp" -->

	<!-- #include file="../../menu.asp" -->

	<!-- #include file="../../sites.asp" -->
 	<!-- #include file="../../buscador.asp" -->
	<!-- #include file="../../recomendado.asp" -->

	<!-- #include file="../../arquivo.asp" -->

	<div id="txtcont">
<h2>Zoom em imagem</h2>
<p>
	Que tal você fazer um zoom com css como este <a href="passo7.html">aqui</a>?<br />
	Então, siga as instruções abaixo e bom estudo! :-)
</p>

<h2>Armando o documento:</h2>
<p>
	Depois de ter escrito toda a estrutura do documento (&lt;html&gt;&lt;head&gt;...) coloque no corpo do documento apenas um link e defina um ID para este link, neste caso, definimos como "foto", veja abaixo:<br />
	&lt;a href="#" id="foto"&gt;Ver a foto ampliada&lt;/a&gt;
</p>
<p>
	<a href="passo1.html">Veja o html deste passo.</a>
</p>

<h2>Fazendo a imagem:</h2>
<p>
	Muitos podem não entender este passo, ele é muito importante, portante, preste o máximo de atenção.
</p>
<p>
	Neste zoom, não vamos mudar a dimensão de uma imagem pequena, ou seja, não vamos aumentar literalmente a imagem, nós apenas vamos fazer uma pequena troca. Por isso, você deverá ter a imagem que você quer dar zoom em tamanho grande. Escolha uma imagem, e use um editor de imagem da sua preferência para diminuir a foto, e monte desta <a href="img.jpg">forma</a>, a foto menor em cima da maior.
</p>
<p>
	<img src="img.jpg" />
</p>
<p>
A menor é a que vai ser mostrada no documento, quando o usuário faz o zoom (que vai ser feito ao passar o mouse na foto menor) ele verá a foto grande.
</p>
<p>
	<strong>Detalhe:</strong> As duas fotos (grande e pequena) devem estar juntas em uma única imagem, <a href="img.jpg">assim</a>, isso é essencial para o truque dar certo.
</p>

<h2>Começando a escrever o css</h2>
<p>
	No css, vamos começar a formatar o link!<br />
	Vamos começar definindo que ele deverá flutuar a esquerda (float:left;) está acompanhando?
</p>
<p>
	a#foto {<br />
	&nbsp;&nbsp;&nbsp;float:left;<br />
	}
</p>
<p>
	<a href="passo2.html">Veja o html deste passo.</a>
</p>
<h2>Fazendo o texto do link sumir</h2>
<p>
	Se você colocou algum texto dentro do link, vamos fazer ele desaparecer agora, defina que a identação de texto deste link será de 1000em (text-ident:-1000em;), pronto! Mas agora, temos um problema com o nosso amigo IE, na versão em que testei (Ie 5.0) o texto sumiu. Mas se resolveu quando eu defini que o link deveria ser mostrado como um bloco (display:block;). Para ficar melhor de visualizar, defina uma borda de 1px com a cor preta (border:1px solid black;). Ainda está acompanhando, veja como o css está.
</p>
<p>
	a#foto {<br />
	&nbsp;&nbsp;&nbsp;float:left;<br />
	&nbsp;&nbsp;&nbsp;text-indent: -1000em;<br />
	&nbsp;&nbsp;&nbsp;display: block;<br />
	&nbsp;&nbsp;&nbsp;border:1px solid black;<br />
	}
<p>
	<a href="passo3.html">Veja o html deste passo.</a>
</p>

<h2>Definindo a dimensão</h2>
<p>
	Lembra das imagens?! Então, defina o tamanho do link com as mesmas proporções que a foto pequena, neste exemplo, a foto pequena tem a largura de 150px (width:150px;) e a altura de 150px (height:150px;). <br />
</p>
<p>
	a#foto {<br />
	&nbsp;&nbsp;&nbsp;float:left;<br />
	&nbsp;&nbsp;&nbsp;text-indent: -1000em;<br />
	&nbsp;&nbsp;&nbsp;display: block<br />
	&nbsp;&nbsp;&nbsp;width: 150px;<br />
	&nbsp;&nbsp;&nbsp;height: 150px;<br />
	}
</p>
<p>
	<a href="passo4.html">Veja o html deste passo.</a>
</p>

<p>
	Você deve estar visualizando um quadrado com uma borda preta, não é? O próximo passo vai dizer o segredo!
</p>
<h2>O começo do truque</h2>
<p>
Lembra da <a href="img.jpg">imagem</a> que a gente fez? <a href="img.jpg">Aquela</a> que tem a foto pequena e a foto grande? Então, você vai definir agora como sendo o background do link, este background não pode se repetir (background:url("img.jpg") no-repeat;
</p>
<p>
	a#foto {<br />
	&nbsp;&nbsp;&nbsp;float:left;<br />
	&nbsp;&nbsp;&nbsp;text-indent: -1000em;<br />
	&nbsp;&nbsp;&nbsp;display: block<br />
	&nbsp;&nbsp;&nbsp;width: 150px;<br />
	&nbsp;&nbsp;&nbsp;height: 150px;<br />
	&nbsp;&nbsp;&nbsp;border:1px solid black;<br />
	&nbsp;&nbsp;&nbsp;background: url("img.jpg") no-repeat;<br />
	}
</p>
<p>
	<a href="passo5.html">Veja o html deste passo.</a>
</p>


<h2>O fim do truque</h2>
<p>
	A foto deve aumentar quando o usuário passar o mouse sobre (a#foto:hover) ela, ou seja.<br />
	Defina que o link deverá ficar com as mesmas dimensões que a foto grande, neste exemplo, a foto tem a largura de 300px (width:300px;) e a altura de 300px (height:300px;), veja como <a href="passo6.html">ficou</a>.
</p>
<p>
	a#foto:hover {<br />
	&nbsp;&nbsp;&nbsp;width: 300px; <br />
	&nbsp;&nbsp;&nbsp;height: 300px;<br />
	}
</p>
<p>
	Calma, calma! Vamos finalizar o truque.<br />
	Para ficar tudo nos conformes, temos que fazer a foto grande ficar na altura certa, isso é fácil! Apenas defina que ao passar o mouse no link, a altura do background seja negativa. Neste exemplo, bastou colocar o valor de -156px que a foto ficou no lugar certo. Você deverá ir testando até achar o valor em que a foto fique alinhada ao topo.
</p>
<p>
	a#foto:hover {<br />
	&nbsp;&nbsp;&nbsp;width: 300px; <br />
	&nbsp;&nbsp;&nbsp;height: 300px;<br />
	&nbsp;&nbsp;&nbsp;background-position: 0 -156px;<br />
	}
</p>

<p>
	<a href="passo7.html">Veja o resultado.</a>
</p>


	</div>

<!-- #include file="../../rodape.asp" -->