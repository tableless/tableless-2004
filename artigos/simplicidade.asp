	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

<h2>HTML simples com XML e CSS</h2>
				<p>
				  Qualquer um que codifique HTML, ou mesmo use um editor
				  WYSIWYG, j&aacute; esbarrou no problema. Se voc&ecirc;
				  trabalha com internet, j&aacute; deve ter tido tamb&eacute;m
				  esse problema. O c&oacute;digo se tornou complexo, com
				  v&aacute;rias tabelas, uma dentro da outra. V&aacute;rios
				  frames, com uma por&ccedil;&atilde;o de scripts para manter o
				  conte&uacute;do atualizado entre eles. Uma parte da
				  aplica&ccedil;&atilde;o rodando em um pop-up, com um script
				  que atualiza o conte&uacute;do principal.
				</p>
				<p>
				  Ent&atilde;o, cumprindo a lei de Murphy, um dos seguintes
				  fatos indesej&aacute;veis acontece:
				</p>
				<ol>
				  <li>
					Um cliente liga reclamando que o site est&aacute; dando um
					tal de "erro de script" quando clica num link, voc&ecirc;
					tenta, mas n&atilde;o consegue reproduzir o erro em nenhum
					navegador.
				  </li>
				  <li>
					Algu&eacute;m da diretoria resolve que os t&iacute;tulos
					devem ser azuis, n&atilde;o vermelhos. E voc&ecirc; se
					p&otilde;e a localizar &lt;font face="verdana" size="5"
					color="red"&gt; para poder mudar a cor.
				  </li>
				  <li>
					Alguma tabela n&atilde;o fechada corretamente est&aacute;
					dando problemas no Netscape, mas o c&oacute;digo tem cinco
					tabelas aninhadas e voc&ecirc; perde um dia tentando achar
					o defeito.
				  </li>
				  <li>
					Voc&ecirc; percebe uma certa demora para carregar algumas
					p&aacute;ginas, vai conferir o c&oacute;digo e descobre
					algumas coisas assim: &lt;font
					face="Verdana"&gt;&lt;b&gt;&lt;/b&gt;&lt;i&gt;&lt;/i&gt;&lt;font
					size="1"&gt;&lt;b&gt;&lt;/b&gt;&lt;/font&gt;&lt;font
					face="Arial"&gt;Texto&lt;/font&gt;&lt;/font&gt;
				  </li>
				</ol>
				<p>
				  Que fazer? &Eacute; claro que com muito cuidado e talento
				  esse tipo de problema pode ser evitado, mas isso envolve uma
				  quantidade de trabalho insana. J&aacute; vi muitos projetos
				  onde se gastou mais tempo preso nas entranhas de um
				  c&oacute;digo complexo do que em qualquer outra fase do
				  projeto.
				</p>
				<p>
				  Tem um pessoal na web que prop&otilde;e uma
				  solu&ccedil;&atilde;o bastante interessante para isso.
				  &Eacute; a turma do WaSP (www.webstandards.org.) As
				  solu&ccedil;&otilde;es n&atilde;o s&atilde;o apenas uma lista
				  de novas tecnologias, mas tamb&eacute;m uma filosofia de
				  desenvolvimento baseada na simplicidade.
				</p>
				<p>
				  Baseado nessa filosofia da simplicidade, que tem me rendido
				  resultados surpreendentes, gostaria de fazer algumas
				  sugest&otilde;es interessantes:
				</p>
				<h2>
				  XHTML
				</h2>
				<p>
				  Quem j&aacute; trabalha com XML certamente percebeu o poder
				  da flexibilidade e da simplicidade. &Eacute;
				  imposs&iacute;vel escrever um XML com erros de sintaxe,
				  porque os interpretadores reclamam imediatamente. &Eacute;
				  muito simples escrever documentos XML, sendo f&aacute;cil
				  extrair dados de qualquer banco de dados e
				  transform&aacute;-los em XML (a maioria dos SGBDs incorpora
				  ou tem planos de incorporar o suporte nativo a XML.)
				  Atrav&eacute;s da poderosa linguagem XSL e da farta oferta de
				  parsers gratuitos, XML pode ser transformado em praticamente
				  qualquer formato de arquivo.
				</p>
				<p>
				  XHTML nada mais &eacute; do que uma forma de escrever um
				  documento HTML de modo que ele tamb&eacute;m seja um
				  documento XML v&aacute;lido. Ou seja, seu documento HTML
				  ganha a coer&ecirc;ncia e flexibilidade de um documento XML,
				  podendo ser facilmente lido por ferramentas
				  autom&aacute;ticas e convertido em outros formatos de
				  arquivos. Com XHTML torna-se muito f&aacute;cil oferecer os
				  dados do seu site atrav&eacute;s de WAP ou de um RSS
				  (<a href="http://rssficado.pilger.inf.br">http://rssficado.pilger.inf.br</a>)
				  por exemplo. Torna-se f&aacute;cil tamb&eacute;m transformar
				  o resultado de uma consulta a banco de dados ou um documento
				  XML numa p&aacute;gina web.
				</p>
				<p>
				  A boa not&iacute;cia &eacute; que &eacute; muito f&aacute;cil
				  escrever XHTML. Qualquer um que escreva HTML pode aprender a
				  faz&ecirc;-lo sem muita dificuldade. Existem inclusive uma
				  s&eacute;rie de ferramentas interessantes para tornar esse
				  processo mais produtivo, como o excelente HTML Tidy
				  (<a href="http://tidy.sourceforge.net">http://tidy.sourceforge.net</a>)
				  que tem uma efici&ecirc;ncia impressionante para uma
				  ferramenta autom&aacute;tica.
				</p>
				<h2>
				  CSS e a Abordagem Sem&acirc;ntica
				</h2>
				<p>
				  Como voc&ecirc; cria um t&iacute;tulo num documento HTML?
				</p>
				<p>
				  O meio comum hoje em dia para faz&ecirc;-lo &eacute;:
				  &lt;font face="Arial" size="4" color="blue"&gt;Texto do
				  T&iacute;tulo&lt;/font&gt;.
				</p>
				<p>
				  Quando eu estudei HTML, em 1996, aprendi que existia uma tag
				  espec&iacute;fica para cria&ccedil;&atilde;o de
				  t&iacute;tulos. &Eacute; a tag h1. Assim, a maneira de se
				  criar um t&iacute;tulo em HTML seria: &lt;h1&gt;Texto do
				  T&iacute;tulo&lt;/h1&gt;.
				</p>
				<p>
				  Extremamente mais simples, n&atilde;o &eacute; verdade? E
				  torna o c&oacute;digo tamb&eacute;m mais significativo. Assim
				  um interpretador pode saber, por exemplo, onde est&atilde;o
				  os t&iacute;tulos no meio do texto. Ou seja, esta abordagem
				  d&aacute; significado sem&acirc;ntico ao c&oacute;digo.
				  Aquele tag passa a significar alguma coisa, mesmo que
				  n&atilde;o seja vista num browser que renderize a fonte maior
				  e azul que voc&ecirc; tinha planejado.
				</p>
				<p>
				  Ali&aacute;s, por falar no texto azul, se voc&ecirc; usar a
				  segunda abordagem seu t&iacute;tulo ser&aacute; exibido com
				  os estilos padr&atilde;o do navegador, e seu azul vai para o
				  belel&eacute;u. Como voc&ecirc; n&atilde;o quer perder a
				  bonita formata&ccedil;&atilde;o que havia planejado, aqui
				  entra uma segunda linguagem, o CSS. Com CSS voc&ecirc; pode
				  colocar toda essa informa&ccedil;&atilde;o sobre
				  formata&ccedil;&atilde;o num arquivo externo. Assim
				  voc&ecirc; fica com um arquivo HTML apenas com
				  informa&ccedil;&atilde;o (que fica muito mais simples,
				  organizado e r&aacute;pido de se escrever) e mant&eacute;m
				  toda a formata&ccedil;&atilde;o num arquivo externo. Se um
				  dia seu chefe resolver que todos os t&iacute;tulos do site
				  tem que ser vermelhos ao inv&eacute;s de azuis (acredite,
				  isso &eacute; muito comum) voc&ecirc; s&oacute;
				  precisar&aacute; alterar uma palavra em um &uacute;nico
				  arquivo e todos os t&iacute;tulos do site estar&atilde;o
				  automaticamente ajustados.
				</p>
				<h2>
				  No Tables
				</h2>
				<p>
				  Tabelas s&atilde;o um recurso muito &uacute;til do HTML. Sem
				  tabelas como exibir&iacute;amos informa&ccedil;&otilde;es
				  como uma lista de produtos, um extrato banc&aacute;rio ou um
				  calend&aacute;rio? O problema &eacute; que tabelas tem sido
				  usadas para muito mais do que isso. &Eacute; preciso colocar
				  o menu ao lado do texto? Cria-se uma tabela. &Eacute; preciso
				  que o texto tenha uma largura delimitada? Cria-se uma tabela.
				  Imagem junto ao texto? Menu no cabe&ccedil;alho? Duas colunas
				  de texto? Tabela neles!
				</p>
				<p>
				  E como fica, nessa situa&ccedil;&atilde;o, a sem&acirc;ntica
				  do documento? Como voc&ecirc; deve imaginar, n&atilde;o
				  h&aacute; aqui aquela pr&aacute;tica separa&ccedil;&atilde;o
				  entre informa&ccedil;&atilde;o e formata&ccedil;&atilde;o.
				  Al&eacute;m disso, temos um outro s&eacute;rio problema: em
				  browsers antigos, ou mesmo em browsers modernos mal
				  desenvolvidos, como o Internet Explorer, as tabelas s&oacute;
				  s&atilde;o exibidas depois que a &uacute;ltima tag
				  &lt;/table&gt; chega ao navegador.
				</p>
				<p>
				  &Eacute; por isso que, quando voc&ecirc; est&aacute;
				  conectado via dial-up, em alguns sites a tela fica em branco
				  durante longos segundos (&agrave;s vezes minutos) at&eacute;
				  que &eacute; exibido de uma vez s&oacute;.
				</p>
				<p>
				  Abrir m&atilde;o de tabelas para montar layouts vai tornar
				  seu c&oacute;digo muito menor, mais simples e organizado. Vai
				  tamb&eacute;m centralizar a formata&ccedil;&atilde;o,
				  colocando tudo que se refere a layout em um &uacute;nico
				  arquivo. Imagine a facilidade de manuten&ccedil;&atilde;o.
				  Melhora tamb&eacute;m a experi&ecirc;ncia do usu&aacute;rio,
				  pois a informa&ccedil;&atilde;o &eacute; exibida
				  instantaneamente, assim que chega ao browser.
				</p>
				<p>
				  D&aacute;-se a esta abordagem o nome de tableless. Apesar do
				  nome, n&atilde;o &eacute; a aus&ecirc;ncia total de tabelas,
				  mas o seu uso apenas onde &eacute; semanticamente
				  justific&aacute;vel. De lambuja, um documento tableless bem
				  pensado vai funcionar em qualquer navegador, em qualquer
				  sistema operacional, mesmo em PDAs.
				</p>
				<h2>
				  No Frames, No Pop-ups, No DHTML
				</h2>
				<p>
				  Pense muito antes de aplicar uma solu&ccedil;&atilde;o
				  baseada em frames, DHTML, scripts absurdos, pop-ups, plugins,
				  ActiveX, Applets ou qualquer outra tecnologia que quebre
				  essas duas premissas da internet:
				</p>
				<p>
				  - A web &eacute; um ambiente multiplataforma.
				</p>
				<p>
				  - Cada documento na web tem um endere&ccedil;o associado a
				  ele.
				</p>
				<p>
				  N&atilde;o vou me alongar nesse t&oacute;pico, mas gostaria
				  que voc&ecirc; tomasse um tempo para ler:
				</p>
				<ul>
				  <li>
					<a href="http://www.wired.com/news/culture/0,1284,55675,00.html">
					http://www.wired.com/news/culture/0,1284,55675,00.html</a>
				  </li>
				  <li>
					<a href="http://www.digital-web.com/features/feature_2001-6.shtml">
					http://www.digital-web.com/features/feature_2001-6.shtml</a>
				  </li>
				  <li>
					<a href="http://www.digital-web.com/features/feature_2002-09.shtml">
					http://www.digital-web.com/features/feature_2002-09.shtml</a>
				  </li>
				  <li>
					<a href="http://www.useit.com/alertbox/990530.html">http://www.useit.com/alertbox/990530.html</a>
				  </li>
				  <li>
					<a href="http://www.useit.com/alertbox/9612.html">http://www.useit.com/alertbox/9612.html</a>
				  </li>
				</ul>

				<h2>
				  Vamos com calma
				</h2>
				<p>
				  O interessante dessa abordagem baseada na simplicidade
				  &eacute; que voc&ecirc; n&atilde;o precisa fazer tudo de uma
				  vez. Se est&aacute; inseguro para come&ccedil;ar, pode apenas
				  eliminar as tags &lt;font&gt; e criar um arquivo CSS
				  &uacute;nico. Ou pode come&ccedil;ar usando os recursos de
				  XML do seu banco de dados para gerar XHTML, ou criando um
				  RSS. O importante &eacute; come&ccedil;ar a simplificar antes
				  que voc&ecirc; fique maluco!
				</p>
				<hr />
				<blockquote>
				  Elcio Ferreira<br />
				  <a href="http://elcio.locaweb.com.br/">http://elcio.locaweb.com.br/</a><br />
				  <a href="mailto:elciof@icqmail.com">elciof@icqmail.com</a>
				  <hr /><br />
				  <small>Escrito originalmente para o <a href="http://www.freecode.com.br/">Freecode</a></small>
				</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

