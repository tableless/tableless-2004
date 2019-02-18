	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

<h2>Tutorial: Trocando o Layout de seu Site de Forma Dinâmica com Style Sheet.</h2>

<p>Considerações Iniciais:</p>
<ul>
	<li>Este tutorial não vai ensinar você a criar um arquivo CSS, para isto, você deve procurar o tutorial em: <a href="http://www.tableless.com.br/estudo.asp">http://www.tableless.com.br/estudo.asp</a></li>
	<li>Este tutorial não vai ensinar você a gerar COOKIES, para isto, você pode consultar <a href="http://www.javascriptsource.com">http://www.javascriptsource.com</a></li>
	<li>Você precisa ter um arquivo escrito em XHTML 1.0 ou HTML 4.0</li>
	<li>Este tutorial vai apresentar uma maneira fácil e simples de controlar style sheets em seu documento da web.</li>
	<li>Os documentos originais que serviram de base para este tutorial podem ser encontrados em: <br />
	<a href="http://www.alistapart.com/stories/alternate">http://www.alistapart.com/stories/alternate</a><br />
	<a href="http://www.w3c.org/Style/CSS/">http://www.w3c.org/Style/CSS/</a><br />
	<a href="http://www.scriptygoddess.com/archives/001587.php">http://www.scriptygoddess.com/archives/001587.php</a><br />
	<a href="http://www.javascriptsource.com">http://www.javascriptsource.com</a></li>
</ul>


<h2>Usando Style Sheets</h2>
<p>Style Sheets podem ser associados a documentos usando uma lista de 'link elements' entre as tags &lt;head> e &lt;/head> de seu documento. Estes links fazem referência a arquivos CSS externos que determinam a maneira de apresentação do seu site nos navegadores para web.</p>
<p>Os links usados para referenciar o arquivo CSS se relacionam com o documento de três maneiras diferentes: 'persistent', 'preferred' e 'alternate'.</p>
<p>É importante discutirmos rapidamente o papel de cada uma dessas modalidades de relacionamento, para que possamos entender o script que veremos mais adiante e compreender algumas de suas limitações.</p>

<p><b>Persistent</b></p>
<p>Estes style sheets estão sempre em funcionamento. É o relacionamento padrão do link de referencia ao arquivo CSS com o documento que está sendo interpretado pelo navegador. </p>
<p>Para colocar o Style Sheet <b>orange.css</b> como persistent, o seguinte elemento deve ser colocado na seção 'head' de seu documento:</p>
<pre>&lt;link rel="stylesheet" type="text/css" 
href="orange.css" /></pre>
<p><b>Preferred</b></p>
<p>O link de relacionamento é entendido como preferred, quando existem style sheets alternativos linkados no documento. Ele é disponibilizado como o principal no momento que o documento for lido pelo navegador.</p>
<p>Para deixar um style sheet como preferred, basta setar o atributo 'rel' como "stylesheet" e nomear este com um atributo 'title'.</p>
<p><b>Nota:</b> Mais de um link de relacionamento pode conter o atributo 'title' idênticos. Eles serão ativados e desativados em conjunto. Se mais de um link de relacionamento estiver setado como preferred no documento, o primeiro link que for lido é o que vai ser acionado.</p>
<p>Mas atenção: A função primária de links alternativos e prefenciais, não é simplesmente a troca de layouts, e sim a possibilidade de navegadores e hardwares limitados terem uma alternativa para a apresentação do documento na tela do usuário.</p>
<p>Portanto, se você setar dois links como preferred e um fazer referência a um arquivo CSS muito menor que o outro, o link com o CSS de menor tamanho vai ser ativado primeiro, pois o arquivo terá sido lido mais rapidamente pelo navegador.</p>
<p>Portanto, recomendamos fortemente que apenas um de dos links de referência no seu documento fique setado como preferred.</p>
<p>Para deixar o arquivo <b>orange.css</b> como preferred, basta adicionar a seguinte linha na seção 'head' de seu documento:</p>
<pre>&lt;link rel="stylesheet" type="text/css" 
href="orange.css" title="fundo laranja"></pre>
<p><b>Alternate</b></p>
<p>Finalmente as alternativas. Estes parâmetros alternativos podem ser acionados pelos visitantes da página, deixando o aspecto do site como lhe parece mais amigável. Claro que todos os esquemas pré-selecionados por links de relacionamento devem existir em arquivos CSS individuais.</p>
<p>Para especificar um link como alternate, basta dar ao atributo 'rel' o valor  "alternate stylesheet" e dar um nome para o atributo 'title'. Mais de um link pode ser especificado como alternate e inclusive receber valores para o atributo 'title' idênticos,  para serem acionados em grupos, se necessário.</p>
<p>Transformaremos agora o esquema de layout do arquivo <b>orange.css</b> em um layout alternativo, usando o alternate.</p>
<pre>&lt;link rel="alternate stylesheet" type="text/css" 
href="orange.css" title="layout laranja" /></pre>
<p>Note que estes relacionamentos são aplicáveis apenas à arquivos CSS externos, referenciados pelo elemento link. Não funciona para parâmetros STYLE internos e nem para a função '@import'.</p>
<h2>Trocando o Layout do Site:</h2>
<p>Apresentaremmos aqui duas soluções:</p>
<p>Uma Server-Side com a linguagem php e uma Client-Side com a linguagem javascript.</p>
<p><b>Trocando o Layout do Site com Javascript:</b></p>
<p>Para trocar o layout do documento usando javascript, seguiremos basicamente 3 passos. </p>
<p>Primeiro: Habilitamos o script a diferenciar entre os 3 diferentes tipos de style sheet.<br />
Segundo: Criamos a função que vai trocar os styles sheets.<br />
Terceiro: Guardamos a escolha do usuário em um cookie para a próxima visita ou para as próximas páginas do site.</p>
<p><b>Passo 1:</b> Habilitando o Script</p>
<p>Isto é um link Style Sheet?</p>
<pre>HTMLLinkElement.getAttribute("rel").indexOf("style")!=-1</pre>
<p>Isto é um atributo title?</p>
<pre>HTMLListElement.getAttribute("title")</pre>
<p>O atributo rel contém a palavra-chave  "alternate"?</p>
<pre>HTMLLinkElement.getAttribute("rel").indexOf("alt")!=-1</pre>
<p>Veja que a checagem para a string é <b>alt</b> porque alguns browsers aceitam a palavra-chave "alternative" no lugar de "alternate".</p>
<p>Usando essa checagem, pode-se escrever uma função para mudar os styles sheets de um site. Esta função fará um looping através de cada elemento 'link' do documento e desativará os styles sheets que não queremos funcionantes e ativará todos os preferred e alternate que quisermos.</p>
<p>A função de troca pode ser esta:</p>
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
<p>Agora que já fornecemos a opção para o usuário trocar a aparência do site, vamos guardar a sua preferência para uma próxima visita. Além disso, a troca de aparência tem que funcionar no site inteiro, não só na primeira página.</p>
<p>Vamos usar duas funções: store e read cookie.</p>
<p>Primeiro vamos ver qual o style sheet que o usuário preferiu usar:</p>
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
<p>Vamos adicionar isso a funções onload e onunload do cookie.</p>
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
<p>Passando a variável para a função onload...</p>
<pre>window.onload = function(e) {
  var cookie = readCookie("style");
  var title = cookie ? cookie : getPreferredStyleSheet();
  setActiveStyleSheet(title);
}
</pre>
<p>Agora colocando tudo isso junto:</p>
<p>Coloque isto em um arquivo e salve como 'switchstyle.js'. Para incluir este arquivo em seu site, coloque na seção 'head' de seu documento, abaixo dos links do style sheet, a seguinte linha:</p>
<pre>&lt;script type="text/javascript" 
src="switchstyle.js">&lt;/script></pre>
<p><a href="switchstyle.js">Clique aqui para fazer o download</a> do arquivo 'switchstyle.js' com todas as funções já reunidas.</p>
<p>Para chamar a função de troca de styles sheets, você pode usar um javascript de eventos 'onclick'. Por exemplo, se você quiser dar a opção do usuário trocar entre os layouts <b>default</b> e <b>orange</b>, você pode colocar a seguinte linha no seu documento:</p>
<pre>&lt;a href=# 
onclick="setActiveStyleSheet('default'); return false;">
Layout Padrão&lt;/a>
&lt;a href=# 
onclick="setActiveStyleSheet('orange'); return false;">
Layout Laranja&lt;/a>
</pre>
<p>Cada visita em um layout, será armazenada no cookie. Para usar o mesmo esquema de layout através do site, você pode incluir os links de referência do style sheet e o link do javascript em cada página do site.</p>
<p><b>Trocando o Layout do Site com php</b></p>
<p>A escolha pelo php como linguagem dinâmica para apresentar uma alternativa para o Switcher de CSS está bem justificada no site A List Apart: é grátis, fácil, rápida, e claro, server-side.</p>
<p><b>Passo 1:</b> Setando os Styles</p>
<p>O primeiro passo é criar um novo arquivo no servidor chamado switcher.php e colocar o seguinte código dentro dele:</p>
<pre>&lt;?php
setcookie ('sitestyle', $set, time()+31536000, '/', 
'www.seusite.com.br', '0');
header("Location: $HTTP_REFERER");
?></pre>
<p>Este código cria um cookie armazenando qual o style sheet que o usuário está aplicando no documento. Este cookie é programamdo para expirar em um ano, quando o usuário volta a ser redirecionado para o style sheet padrão. Não esqueça de substituir o 'www.seusite.com.br' pela url de seu site.</p>
<p>No corpo de seu documento, você usará uma chamada simples deste arquivo como esta:</p>
<pre>&lt;a href="switcher.php?set=orange">Layout Laranja&lt;/a></pre>
<p>Neste caso, <b>orange</b> é o nome do style sheet que você está chamando. Não há necessidade de colocar a extensão .CSS neste momento, pois isto será feito posteriormente.</p>
<p>Você poderá também usar outras formas de links em html, como um menu drop-down:</p>
<pre>&lt;form action="switcher.php" method="post">
&lt;select name="set">
&lt;option value="default" selected>Padrão&lt;/option>
&lt;option value="orange">Layout Laranja&lt;/option>
&lt;option value="marine">Layout Azul&lt;/option>
&lt;/select>
&lt;input type="submit" value="Mudar Style">
&lt;/form></pre>
<p><b>Passo 2:</b> Detectando Styles</p>
<p>Para cada página que você quiser poder trocar o style, deverá inserir o seguinte Link dentro da seção 'head' do seu site:</p>
<pre>&lt;link rel="stylesheet" type="text/css" media="screen" 
title="Sabadonaestrada Layouts" href="css/&lt;?php 
echo (!$sitestyle)?'defaultstyle':$sitestyle ?>.css" /></pre>
<p>Este é um &lt;link element> comum, que agirá com este pequeno script que você inseriu no atributo 'href':</p>
<pre>&lt;?php echo (!$sitestyle)?'defaultstyle':$sitestyle ?></pre>
<p>Este script lê o cookie para selecionar quais os styles que o documento está usando os imprime na linha de código. Caso não haja um cookie para dar esta informação, o documento usa o 'defaultstyle.css' como arquivo padrão. Você pode mudar o termo 'defaulstyle' para o nome de seu arquivo CSS preferencial.</p>
<p><b>Considerações Finais:</b></p>
<p>Os recursos para troca de styles sheets em documentos na web podem ter um foco bem mais amplo do que a simples troca de layout ou uma maneira de exibir layouts elaborados de forma cross-browser.</p>
<p>Os styles sheets podem ser trabalhados para garantir a acessabilidade ao documento e sua perfeita interpretação, mesmo que o usuário esteja solicitando o documento na web com um navegador desatualizado ou de um computador com limitações de hardware. A troca de cores e tamanho de fontes permite que pessoas com necessidades especiais tenham acesso ao documento, e possam deixá-lo mais legível ou simplesmente com um aspecto mais amigável.</p>
<p>Grande parte do conteúdo deste tutorial é uma livre tradução do material encontrado no A List Apart e é da autoria de Paul Sowden (<a href="http://www.idontsmoke.co.uk">www.idontsmoke.co.uk</a>).</p>
<p>Você pode ver este script rodando como exemplo em: <br />
<a href="http://www.sabadonaestrada.com.br">www.sabadonaestrada.com.br</a><br />
<a href="http://www.ana.beskow.nom.br">www.ana.beskow.nom.br</a></p>
<hr />
<blockquote>
  Diógenes de Oliveira Silva<br />
  <hr /><br />
</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

