	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->
	<div id="txtcont">
<h2>Efeito de filtro alpha com CSS</h2>
    
 
    <h3>Objetivo</h3>
	<p>Ol&aacute; comunidade Tableless.<br />
      Este tutorial tem como objetivo mostrar uma t&eacute;cnica bastante simples 
      para se reproduzir com CSS puro, os efeitos de filtro alpha, que quando 
      definidos sem uso das CSS, ficam restritos a determinado brownser, limitando 
      ou mesmo impedindo com isso seu uso irrestrito por projetistas CSS.</p>
    
  <p>Assim, ao final da leitura deste tutorial, voc&ecirc; estar&aacute; capacitado 
    a reproduzir esse efeito e mais ainda, com algumas simples adapta&ccedil;&otilde;es 
    obter outros efeitos similares e tudo dentro das WebStandards e validado.<br />
    Veja figura abaixo:</p>
  <p><img src="filtrocssimg/fig_1.jpg "alt="Filtro alpha" name="flor1" width="230" height="306" border="0" id="flor1" title="Efeito de filtro alpha com CSS" /></p>
<h3>O HTML</h3>
  <p>A marca&ccedil;&atilde;o HTML &eacute; bem simples:</p>
  <UL>
  <li>Uma DIV para conter a imagem</li>
  <li>Uma DIV para o texto</li>
  </UL>
  <p><strong><em>Nota:</em></strong><em> O texto em fundo amarelo na figura acima, 
    é apenas ilustrativo e foi retirado da estilização neste tutorial. </em>
  <pre style="font: 11px 'courier new', courier, mono">
&lt;div id="imagem"&gt;&lt;img src="imagem.jpg" alt="flor" /&gt; 
&lt;div id="texto"&gt; Tutorial mostrando a t&eacute;cnica 
de filtro alpha com CSS puro!
&lt;/div&gt;
&lt;/div&gt;
</pre>
  <p>O HTML acima &eacute; renderizado conforme mostrado a seguir.<br />
    <em>Colori a div imagem em cinza claro e a div texto em amarelo claro para 
    efeito de visualiza&ccedil;&atilde;o.</em> </p>
  <p><img src="filtrocssimg/fig_2.jpg" alt="Efeito de filtro alpha com CSS" name="flor2" width="293" height="346" border="0" id="flor2" title="Renderiza&ccedil;&atilde;o"  /></p>
  <h3>A folha de Estilo</h3>
  <p>As regras de estilo para a div imagem:</p>
  <pre style="font: 11px 'courier new', courier, mono">
#imagem {
width:230px;/*largura da imagem */
/* As tres regras a seguir posicionam
a imagem na tela */
position:absolute;
left:20px;
top:20px;
}
</pre>
  <p>E, as regras de estilo para a div texto:<br />
    Notar que o posicionamento da div texto &eacute; feito em rela&ccedil;&atilde;o 
    a div imagem e n&atilde;o a viewport!</p>
  <pre style="font: 11px 'courier new', courier, mono">
#texto {
position:absolute;
width: 70%;
top:10px;
left:10px;
font: bold 16px arial, sans-serif;
color:#ffffff;
text-align:left;
padding:5px 10px;
/* &Eacute; na regra CSS para o background que est&aacute; o FILTRO! */
/* O filtro &eacute; a imagem <strong>alpha_branca.gif</strong> */	
background:transparent url(alpha_branca.gif) center repeat;
	}
</pre>
  <h3>O filtro</h3>
  <p>O &quot;truque&quot; para obter o efeito reside na imagem de fundo para o 
    texto. Imagem esta que Todd Fahrner chamou de <em>&quot;halfscreen&quot;, 
    </em>que traduzido ao p&eacute; da letra resulta em <em>meia-tela </em>e que 
    eu vou chamar de imagem ou fundo<em> &quot;alpha&quot;.<br />
    </em>A imagem<em> alpha </em>&eacute; formada por pixels que se alternam em 
    transparente e opaco. Imagine um tabuleiro de xadrez, onde as &quot;casas&quot; 
    pretas sejam pixel colorido (opaco) e as brancas transparentes.<br />
    Veja a figura abaixo ilustrando a explica&ccedil;&atilde;o:</p>
  <p><img src="filtrocssimg/fig_3.gif" alt="Efeito de filtro alpha com CSS" name="xadrez" width="291" height="314" border="0" id="xadrez" title="Imagem alpha"  /></p>
  <h3>Considera&ccedil;&otilde;es finais</h3>
  <p>Como voc&ecirc; j&aacute; deve ter conclu&iacute;do o filtro alpha com CSS 
    resume-se a imagem<em> alpha. </em>Mudando a cor dos pixels, voc&ecirc; obt&eacute;m 
    cores diferentes para o filtro.<br />
    Sugiro alterar o formato de montagem (tabuleiro de xadrez) da imagem <em>alpha</em> 
    para observar o efeito final.<br />
    Por exemplo: Tente com uma <em>alpha</em> tipo scan lines ou usar 4px ao inv&eacute;s 
    de 1 px e uma variedade sem fim de experimentos.</p>
  <p>Simples,...... mas genial! :-)</p>
		<hr />

		<blockquote>
		   Este tutorial foi escrito por Maur&iacute;cio Samy Silva, desenvolvedor do 
    site <A 
href="http://www.maujor.com/" title="Um site com dicas macetes e tutoriais CSS">CSS para Web 
    Design</A> e baseia-se numa id&eacute;ia original de <a href="http://www.webstandards.org/about/bios/tfahrner.html" target="_blank" title="O criador da id&eacute;ia">Todd 
    Fahrner</a>
		</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

