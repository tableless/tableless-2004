	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

<h2>Tutorial: Trocando o Layout de seu Site de Forma Din�mica com Style Sheet.</h2>

<p>Considera��es Iniciais:</p>
<ul>
	<li>Este tutorial n�o vai ensinar voc� a criar um arquivo CSS, para isto, voc� deve procurar o tutorial em: <a href="http://www.tableless.com.br/estudo.asp">http://www.tableless.com.br/estudo.asp</a></li>
	<li>Este tutorial n�o vai ensinar voc� a gerar COOKIES, para isto, voc� pode consultar <a href="http://www.javascriptsource.com">http://www.javascriptsource.com</a></li>
	<li>Voc� precisa ter um arquivo escrito em XHTML 1.0 ou HTML 4.0</li>
	<li>Este tutorial vai apresentar uma maneira f�cil e simples de controlar style sheets em seu documento da web.</li>
	<li>Os documentos originais que serviram de base para este tutorial podem ser encontrados em: <br />
	<a href="http://www.alistapart.com/stories/alternate">http://www.alistapart.com/stories/alternate</a><br />
	<a href="http://www.w3c.org/Style/CSS/">http://www.w3c.org/Style/CSS/</a><br />
	<a href="http://www.scriptygoddess.com/archives/001587.php">http://www.scriptygoddess.com/archives/001587.php</a><br />
	<a href="http://www.javascriptsource.com">http://www.javascriptsource.com</a></li>
</ul>


<h2>Usando Style Sheets</h2>
<p>Style Sheets podem ser associados a documentos usando uma lista de 'link elements' entre as tags &lt;head> e &lt;/head> de seu documento. Estes links fazem refer�ncia a arquivos CSS externos que determinam a maneira de apresenta��o do seu site nos navegadores para web.</p>
<p>Os links usados para referenciar o arquivo CSS se relacionam com o documento de tr�s maneiras diferentes: 'persistent', 'preferred' e 'alternate'.</p>
<p>� importante discutirmos rapidamente o papel de cada uma dessas modalidades de relacionamento, para que possamos entender o script que veremos mais adiante e compreender algumas de suas limita��es.</p>

<p><b>Persistent</b></p>
<p>Estes style sheets est�o sempre em funcionamento. � o relacionamento padr�o do link de referencia ao arquivo CSS com o documento que est� sendo interpretado pelo navegador. </p>
<p>Para colocar o Style Sheet <b>orange.css</b> como persistent, o seguinte elemento deve ser colocado na se��o 'head' de seu documento:</p>
<pre>&lt;link rel="stylesheet" type="text/css" 
href="orange.css" /></pre>
<p><b>Preferred</b></p>
<p>O link de relacionamento � entendido como preferred, quando existem style sheets alternativos linkados no documento. Ele � disponibilizado como o principal no momento que o documento for lido pelo navegador.</p>
<p>Para deixar um style sheet como preferred, basta setar o atributo 'rel' como "stylesheet" e nomear este com um atributo 'title'.</p>
<p><b>Nota:</b> Mais de um link de relacionamento pode conter o atributo 'title' id�nticos. Eles ser�o ativados e desativados em conjunto. Se mais de um link de relacionamento estiver setado como preferred no documento, o primeiro link que for lido � o que vai ser acionado.</p>
<p>Mas aten��o: A fun��o prim�ria de links alternativos e prefenciais, n�o � simplesmente a troca de layouts, e sim a possibilidade de navegadores e hardwares limitados terem uma alternativa para a apresenta��o do documento na tela do usu�rio.</p>
<p>Portanto, se voc� setar dois links como preferred e um fazer refer�ncia a um arquivo CSS muito menor que o outro, o link com o CSS de menor tamanho vai ser ativado primeiro, pois o arquivo ter� sido lido mais rapidamente pelo navegador.</p>
<p>Portanto, recomendamos fortemente que apenas um de dos links de refer�ncia no seu documento fique setado como preferred.</p>
<p>Para deixar o arquivo <b>orange.css</b> como preferred, basta adicionar a seguinte linha na se��o 'head' de seu documento:</p>
<pre>&lt;link rel="stylesheet" type="text/css" 
href="orange.css" title="fundo laranja"></pre>
<p><b>Alternate</b></p>
<p>Finalmente as alternativas. Estes par�metros alternativos podem ser acionados pelos visitantes da p�gina, deixando o aspecto do site como lhe parece mais amig�vel. Claro que todos os esquemas pr�-selecionados por links de relacionamento devem existir em arquivos CSS individuais.</p>
<p>Para especificar um link como alternate, basta dar ao atributo 'rel' o valor  "alternate stylesheet" e dar um nome para o atributo 'title'. Mais de um link pode ser especificado como alternate e inclusive receber valores para o atributo 'title' id�nticos,  para serem acionados em grupos, se necess�rio.</p>
<p>Transformaremos agora o esquema de layout do arquivo <b>orange.css</b> em um layout alternativo, usando o alternate.</p>
<pre>&lt;link rel="alternate stylesheet" type="text/css" 
href="orange.css" title="layout laranja" /></pre>
<p>Note que estes relacionamentos s�o aplic�veis apenas � arquivos CSS externos, referenciados pelo elemento link. N�o funciona para par�metros STYLE internos e nem para a fun��o '@import'.</p>
<h2>Trocando o Layout do Site:</h2>
<p>Apresentaremmos aqui duas solu��es:</p>
<p>Uma Server-Side com a linguagem php e uma Client-Side com a linguagem javascript.</p>
<p><b>Trocando o Layout do Site com Javascript:</b></p>
<p>Para trocar o layout do documento usando javascript, seguiremos basicamente 3 passos. </p>
<p>Primeiro: Habilitamos o script a diferenciar entre os 3 diferentes tipos de style sheet.<br />
Segundo: Criamos a fun��o que vai trocar os styles sheets.<br />
Terceiro: Guardamos a escolha do usu�rio em um cookie para a pr�xima visita ou para as pr�ximas p�ginas do site.</p>
<p><b>Passo 1:</b> Habilitando o Script</p>
<p>Isto � um link Style Sheet?</p>
<pre>HTMLLinkElement.getAttribute("rel").indexOf("style")!=-1</pre>
<p>Isto � um atributo title?</p>
<pre>HTMLListElement.getAttribute("title")</pre>
<p>O atributo rel cont�m a palavra-chave  "alternate"?</p>
<pre>HTMLLinkElement.getAttribute("rel").indexOf("alt")!=-1</pre>
<p>Veja que a checagem para a string � <b>alt</b> porque alguns browsers aceitam a palavra-chave "alternative" no lugar de "alternate".</p>
<p>Usando essa checagem, pode-se escrever uma fun��o para mudar os styles sheets de um site. Esta fun��o far� um looping atrav�s de cada elemento 'link' do documento e desativar� os styles sheets que n�o queremos funcionantes e ativar� todos os preferred e alternate que quisermos.</p>
<p>A fun��o de troca pode ser esta:</p>
<pre>function setActiveStyleSheet(title) {
 var i, a, main;
 for(i=0;(a = document.getElementsByTagName("link")[i]);i++){
   if(a.getAttribute("rel").indexOf("style") != -1
   && a.getAttribute("title")) {
      a.disabled = true;
      if(a.getAttribute("title") == title) a.disabled = false;
   }
 }
}</pre>
<p><b>Passo 2:</b> Montando o Cookie</p>
<p>Agora que j� fornecemos a op��o para o usu�rio trocar a apar�ncia do site, vamos guardar a sua prefer�ncia para uma pr�xima visita. Al�m disso, a troca de apar�ncia tem que funcionar no site inteiro, n�o s� na primeira p�gina.</p>
<p>Vamos usar duas fun��es: store e read cookie.</p>
<p>Primeiro vamos ver qual o style sheet que o usu�rio preferiu usar:</p>
<pre> function getActiveStyleSheet() {
  var i, a;
  for(i=0;(a = document.getElementsByTagName("link")[i]);i++){
    if(a.getAttribute("rel").indexOf("style") != -1
       && a.getAttribute("title")
       && !a.disabled) return a.getAttribute("title");
  }
  return null;
}

function createCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}
function readCookie(name) {
  var nameEQ = name + "=";
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
    if (c.indexOf(nameEQ) == 0) 
      return c.substring(nameEQ.length,c.length);
  }
  return null;
}
</pre>
<p>Vamos adicionar isso a fun��es onload e onunload do cookie.</p>
<p>E voltamos a buscar o preferred, par aos casos do cookie expirar...</p>
<pre>function getPreferredStyleSheet() {
  var i, a;
  for(i=0;(a = document.getElementsByTagName("link")[i]);i++){
    if(a.getAttribute("rel").indexOf("style") != -1
       && a.getAttribute("rel").indexOf("alt") == -1
       && a.getAttribute("title")
       ) return a.getAttribute("title");
  }
  return null;
}
</pre>
<p>Passando a vari�vel para a fun��o onload...</p>
<pre>window.onload = function(e) {
  var cookie = readCookie("style");
  var title = cookie ? cookie : getPreferredStyleSheet();
  setActiveStyleSheet(title);
}
</pre>
<p>Agora colocando tudo isso junto:</p>
<p>Coloque isto em um arquivo e salve como 'switchstyle.js'. Para incluir este arquivo em seu site, coloque na se��o 'head' de seu documento, abaixo dos links do style sheet, a seguinte linha:</p>
<pre>&lt;script type="text/javascript" 
src="switchstyle.js">&lt;/script></pre>
<p><a href="switchstyle.js">Clique aqui para fazer o download</a> do arquivo 'switchstyle.js' com todas as fun��es j� reunidas.</p>
<p>Para chamar a fun��o de troca de styles sheets, voc� pode usar um javascript de eventos 'onclick'. Por exemplo, se voc� quiser dar a op��o do usu�rio trocar entre os layouts <b>default</b> e <b>orange</b>, voc� pode colocar a seguinte linha no seu documento:</p>
<pre>&lt;a href=# 
onclick="setActiveStyleSheet('default'); return false;">
Layout Padr�o&lt;/a>
&lt;a href=# 
onclick="setActiveStyleSheet('orange'); return false;">
Layout Laranja&lt;/a>
</pre>
<p>Cada visita em um layout, ser� armazenada no cookie. Para usar o mesmo esquema de layout atrav�s do site, voc� pode incluir os links de refer�ncia do style sheet e o link do javascript em cada p�gina do site.</p>
<p><b>Trocando o Layout do Site com php</b></p>
<p>A escolha pelo php como linguagem din�mica para apresentar uma alternativa para o Switcher de CSS est� bem justificada no site A List Apart: � gr�tis, f�cil, r�pida, e claro, server-side.</p>
<p><b>Passo 1:</b> Setando os Styles</p>
<p>O primeiro passo � criar um novo arquivo no servidor chamado switcher.php e colocar o seguinte c�digo dentro dele:</p>
<pre>&lt;?php
setcookie ('sitestyle', $set, time()+31536000, '/', 
'www.seusite.com.br', '0');
header("Location: $HTTP_REFERER");
?></pre>
<p>Este c�digo cria um cookie armazenando qual o style sheet que o usu�rio est� aplicando no documento. Este cookie � programamdo para expirar em um ano, quando o usu�rio volta a ser redirecionado para o style sheet padr�o. N�o esque�a de substituir o 'www.seusite.com.br' pela url de seu site.</p>
<p>No corpo de seu documento, voc� usar� uma chamada simples deste arquivo como esta:</p>
<pre>&lt;a href="switcher.php?set=orange">Layout Laranja&lt;/a></pre>
<p>Neste caso, <b>orange</b> � o nome do style sheet que voc� est� chamando. N�o h� necessidade de colocar a extens�o .CSS neste momento, pois isto ser� feito posteriormente.</p>
<p>Voc� poder� tamb�m usar outras formas de links em html, como um menu drop-down:</p>
<pre>&lt;form action="switcher.php" method="post">
&lt;select name="set">
&lt;option value="default" selected>Padr�o&lt;/option>
&lt;option value="orange">Layout Laranja&lt;/option>
&lt;option value="marine">Layout Azul&lt;/option>
&lt;/select>
&lt;input type="submit" value="Mudar Style">
&lt;/form></pre>
<p><b>Passo 2:</b> Detectando Styles</p>
<p>Para cada p�gina que voc� quiser poder trocar o style, dever� inserir o seguinte Link dentro da se��o 'head' do seu site:</p>
<pre>&lt;link rel="stylesheet" type="text/css" media="screen" 
title="Sabadonaestrada Layouts" href="css/&lt;?php 
echo (!$sitestyle)?'defaultstyle':$sitestyle ?>.css" /></pre>
<p>Este � um &lt;link element> comum, que agir� com este pequeno script que voc� inseriu no atributo 'href':</p>
<pre>&lt;?php echo (!$sitestyle)?'defaultstyle':$sitestyle ?></pre>
<p>Este script l� o cookie para selecionar quais os styles que o documento est� usando os imprime na linha de c�digo. Caso n�o haja um cookie para dar esta informa��o, o documento usa o 'defaultstyle.css' como arquivo padr�o. Voc� pode mudar o termo 'defaulstyle' para o nome de seu arquivo CSS preferencial.</p>
<p><b>Considera��es Finais:</b></p>
<p>Os recursos para troca de styles sheets em documentos na web podem ter um foco bem mais amplo do que a simples troca de layout ou uma maneira de exibir layouts elaborados de forma cross-browser.</p>
<p>Os styles sheets podem ser trabalhados para garantir a acessabilidade ao documento e sua perfeita interpreta��o, mesmo que o usu�rio esteja solicitando o documento na web com um navegador desatualizado ou de um computador com limita��es de hardware. A troca de cores e tamanho de fontes permite que pessoas com necessidades especiais tenham acesso ao documento, e possam deix�-lo mais leg�vel ou simplesmente com um aspecto mais amig�vel.</p>
<p>Grande parte do conte�do deste tutorial � uma livre tradu��o do material encontrado no A List Apart e � da autoria de Paul Sowden (<a href="http://www.idontsmoke.co.uk">www.idontsmoke.co.uk</a>).</p>
<p>Voc� pode ver este script rodando como exemplo em: <br />
<a href="http://www.sabadonaestrada.com.br">www.sabadonaestrada.com.br</a><br />
<a href="http://www.ana.beskow.nom.br">www.ana.beskow.nom.br</a></p>
<hr />
<blockquote>
  Di�genes de Oliveira Silva<br />
  <hr /><br />
</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

