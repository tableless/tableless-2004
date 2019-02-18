	<!-- #include file="../cab.asp" -->
    
    <!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont" class="artigo">

<h2>Lidando bem com os bloqueadores de pop-up</h2>
<p>Todo mundo que j� experimentou ama bloqueadores de pop-ups. Navegando h� anos com <a href="http://www.opera.com/" title="A melhor experi�ncia de internet">Opera</a> e <a href="http://www.konqueror.org/" title="Konqueror - Web Browser, File Manager - and more!">Konqueror</a> e usando <a href="http://www.mozilla.org/products/firefox/" title="Firefox - The Browser, Reloaded">Firefox</a> para acessar o <a href="http://gmail.google.com" title="Email com gosto de Google">Gmail</a>, ainda me assusto quando preciso navegar no IE, seja num cybercaf� ou na m�quina de um amigo. Como � que as pessoas podem conviver com aquilo? Pop-ups s�o muito chatos, e se voc� n�o acha � porque ainda n�o experimentou viver sem eles tempo o suficiente.</p>
<p>Por outro lado, o advento dos bloqueadores de pop-up trouxe alguns desafios bastante espec�ficos para o desenvolvedor. Por exemplo, o desafio de fazer sites compat�veis com qualquer navegador quando � obrigado a usar ferramentas de terceiros. � o caso, por exemplo, de alguns sistemas de pagamento nacionais, ferramentas essenciais para o desenvolvimento de qualquer e-commerce brasileiro. O fato � que muitos desses sistemas exigem dos seus usu�rios a exibi��o de um pop-up, seja em uma tela de pagamento ou, o que � mais comum, no recibo.</p>

<p>Para complicar, esses sistemas geralmente s�o submetidos a complexos e burocr�ticos processos de homologa��o, onde geralmente a pessoa que vai aprovar seu sistema usa Internet Explorer para Windows e n�o vai estar muito interessado em ouvir seus argumentos a respeito da inacessibilidade dos pop-ups. Vamos ent�o criar uma solu��o para que o usu�rio de navegadores sem bloqueador de pop-ups possam ver normalmente seus pop-ups enquanto os que possuem bloqueador sejam servidos com um confort�vel link para o endere�o do pop-up. Al�m disso, vamos fazer que aqueles que escolheram o gerenciamenteo inteligente de pop-ups possam ver um pop-up ao clicar no link, mantendo o layout do recibo como foi planejado pelo sistema de pagamento, e o que escolheu bloquear todos os pop-ups possa ver o conte�do na mesma janela.</p>
<h2>Primeiro passo:</h2>
<p>Telefonar e escrever para pessoal do sistema de pagamentos, avisando que pop-ups s�o uma solu��o ruim. Demonstre sua indigna��o pelo fato de o sistema deles precisar de uma ferramenta t�o est�pida. De quebra, aproveite para perguntar como fazer o site deles, o m�dulo administrativo, ou o que mais eles tenham feito para que voc� e seu cliente acessem funcionar em seu navegador. Pergunte porque o manual fala sobre Internet Explorer e Netscape 4, mas n�o fala do Safari ou do Firefox. Apresente dessa maneira o Opera e o Mozilla. Se muitos de n�s fizermos isso, eles v�o ter que come�ar a considerar esses navegadores ao criar seus sistemas.</p>
<h2>Segundo passo:</h2>
<p>Entender os fatos b�sicos. Agora que voc� j� ajudou a tornar a web um lugar melhor, vamos resolver o problema imediato do nosso cliente. Primeiro vamos ver como criar um link de pop-up que seja acess�vel a quem n�o quer ou n�o pode exibir pop-ups. Links para pop-ups geralmente s�o criados assim:</p>
<pre>
&lt;a href="javascript:void(open('http://www.atipico.com.br','nova','width=800,height=600'))"&gt;At�pico&lt;/a&gt;
</pre>
<p>O problema � que quem n�o tem javascript em seu navegador ou bloqueou todos os pop-ups n�o pode acessar o link. Muita gente por a� tem usado assim:</p>

<pre>
&lt;a href="http://www.atipico.com.br" onclick="window.open(this.href,'nova','width=800,height=600');return false;"&gt;At�pico&lt;/a&gt;
</pre>
<p>Assim, o link passa a ser um link HTML comum. Para quem tem javascript dispon�vel, o evento onclick vai abrir o popup e o <b>return false</b> ao final vai cancelar o click, fazendo com que a p�gina seja aberta apenas no pop-up, e n�o na janela atual. Apesar da beleza e da simplicidade, este c�digo tem dois problemas. O primeiro � que o Internet Explorer 5.0, em algumas situa��es, n�o lida muito bem com comandos separados por ponto-e-v�rgula em atributos HTML. O segundo, mais s�rio, � que navegadores como Konqueror e Firefox n�o interrompem um script ao bloquear um pop-up. Ent�o, se o Konqueror estiver configurado para bloquear todos os pop-ups, o pop-up n�o vai aparecer, e o <b>return false</b> vai ser executado, fazendo com que o link tamb�m n�o seja carregado na janela atual.</p>
<p>De fato, o c�digo acima era muito usado antes do advento dos bloqueadores de pop-up, para manter o site acess�vel en navegadores sem javascript. Ele funciona muito bem se n�o houver javascript dispon�vel, mas falha em alguns navegadores se houver javascript e o bloqueador de pop-ups estiver habilitado.</p>
<p>Para entender mais de perto a problem�tica vamos verificar como os navegadores se comportam ao bloquear um popup. Para isso vamos usar o seguinte c�digo:</p>

<pre>
&lt;script&gt;
    alert("passo 1")
    window.open("http://www.atipico.com.br","nova","width=800,height=600")
    alert("passo 2")
&lt;/script&gt;
&lt;script&gt;
    alert("passo 3")
&lt;/script&gt;
</pre>
<p>Fazendo o teste com este script voc� pode notar como os navegadores se comportam de maneira diferente ao bloquear um pop-up. Testei no Opera 7.52, no Firefox 0.8 e no Konqueror 3.2.2, todos em Linux. O Mozilla e o Konqueror exibem os tr�s alerts. Ou seja, o pop-up � bloqueado mas o script segue sua execu��o normal. No Opera s�o exibidos os alerts 1 e 3. O Opera, portanto, interrompe a execu��o de um script ao bloquear um pop-up, mas executa normalmente outros scripts na mesma p�gina. O Internet Explorer com a <a href="http://toolbar.google.com/" title="Google Toolbar">Google Toolbar</a> se comportou de maneira id�ntica ao Mozilla e ao Konqueror.</p>

<h3>Terceiro passo:</h3>
<p>Vamos manter nosso pop-up autom�tico, e inserir um link para abrir pop-up que poder� ser usado por quem usa bloqueadores (ou mesmo por algu�m que tenha fechado o pop-up por engano):</p>
<pre>
&lt;script&gt;
    pagina="http://www.atipico.com.br"
    
    function abrir(){
        newWindow=window.open(pagina,"nova","width=800,height=600")
        if(newWindow)return false
    }
    
    abrir()
&lt;/script&gt;
&lt;a href='http://www.atipico.com.br' onclick='return abrir()'&gt;Abrir&lt;/a&gt;
</pre>
<p>Aqui criamos uma fun��o, abrir, que abre o popup. Em seguida a executamos. Se n�o houver bloqueadores o pop-up ser� exibido automaticamente neste passo. Exibimos ent�o um link "Abrir" que executa novamente a fun��o quando clicado. Aqui est� toda a m�gica, o <b>onclick</b> do link cont�m <b>return abrir()</b>, ou seja, o evento ser� tratado de acordo com o retorno da fun��o. O click somente ser� cancelado se a fun��o retornar false.</p>

<p>Agora note que a fun��o tem duas linhas. Na primeira abrimos a nova janela (pop-up) e armazenamos o resultado na vari�vel <b>newWindow</b>. Na segunda linha testamos o valor de newWindow, se existir retornamos false. Assim, acompanhe nosso programa em tr�s situa��es diferentes: primeiro, se n�o houver bloqueadores de pop-ups ou se o bloqueador estiver configurado em <b>smart policy</b>, ou seja, permitir os pop-ups requisitados por voc�. Neste caso, a primeira linha da fun��o abre a janela e armazena o objeto na vari�vel newWindow. A segunda linha testa o valor de newWindow, que existe, e retorna false, cancelando o click. Neste caso o usu�rio ver� o pop-up e nada acontece com a janela original, perfeito. O segundo caso � o de bloqueadores de pop-ups que n�o permitem pop-up algum, mas n�o interrompem a execu��o do script. Neste caso, o pop-up n�o ser� aberto. Ao chegar � segunda linha da fun��o, new Window � testada, e n�o existe. A fun��o n�o retornar� valor (na verdade retornar� undefined, mas isso � outro assunto). O click n�o ser� cancelado e o usu�rio ver� a p�gina solicitada na janela original. A terceira situa��o � o caso dos bloqueadores de pop-up que interrompem a execu��o do script. Nestes o script sequer chegar� � segunda linha da fun��o, o javascript ser� interrompido e o evento n�o ser� cancelado, uma vez que o script sequer chegou a retornar algum valor. O resultado ser� id�ntico ao segundo caso.</p>
<p>H� ainda uma quarta situa��o, a dos navegadores que n�o possuem javascript habilitado. Neste caso o link vai se comportar como um link normal, sem nenhum problema para o usu�rio (embora eu duvide que algu�m sem javascript consiga usar qualquer sistema de pagamento eletr�nico dispon�vel no Brasil.)</p>
<h2>Quarto passo:</h2>
<p>Pra qu� um quarto passo? O c�digo anterior j� funciona muito bem, resolvendo nosso problema. Bom talvez voc� seja curioso o suficiente para querer complicar um pouco as coisas. A quest�o agora �: como exibir conte�do de acordo com o status do pop-up. Isto �, por exemplo, se n�o houver bloqueador de pop-up n�o exibir o link "Abrir", uma vez que o usu�rio ver� o pop-up automaticamente. Pois bem, vamos l�:</p>
<pre>
&lt;script&gt;
    pagina="http://www.atipico.com.br"

    abriu=false
        
    function abrir(){
        newWindow=window.open(pagina,"nova","width=800,height=600")
        if(newWindow){
            abriu=true
            return false
        }
    }
    
    abrir()

&lt;/script&gt;
&lt;script&gt;
if(!abriu)document.write("&lt;a href='http://www.atipico.com.br' onclick='return abrir()'&gt;Abrir&lt;/a&gt;")
&lt;/script&gt;
</pre>
<p>Agora usamos uma vari�vel, <b>abriu</b>, para guardar o status do pop-up. Come�amos o script atribuindo false a esta vari�vel. Depois, dentro do if que testa o pop-up, setamos seu valor para true. Se o pop-up for aberto o valor de abriu ser� true, caso contr�rio ser� mantido o false original.</p>
<p>No segundo bloco script testamos o valor de abriu. Se o pop-up n�o foi aberto, escrevemos no documento o link para abr�-lo. Colocamos esta linha em um segundo bloco script para que seja executada mesmo que o bloqueador interrompa o primeiro script ao cancelar o pop-up.</p>

<p>O script j� faz o que propusemos, exibe o link apenas se o pop-up n�o for aberto automaticamente. Mas agora ele falha em navegadores sem suporte a javascript. Iso � f�cil de resolver, basta colocar, depois dos scripts:</p>
<pre>
&lt;noscript&gt;
    &lt;a href="http://www.atipico.com.br"&gt;Abrir&lt;/a&gt;
&lt;/noscript&gt;
</pre>
<h2>Palavras finais:</h2>
<p>Como voc� viu, lidar com bloqueadores de pop-up � tarefa trivial, e voc� pode oferecer conte�do ao seu usu�rio no formato que ele escolheu ver, pop-ups para quem n�o se importa com eles, ou mesmo para quem os deseja, e links comuns para quem escolheu n�o ver pop-ups. Claro, continuamos achando que pop-ups n�o s�o uma boa ferramenta, mas como voc� n�o pode trabalhar sempre sozinho, isto pode lhe ser �til ao lidar com c�digo de terceiros, como os citados sistemas de e-commerce.</p>

<p>O c�digo nesse artigo foi escrito apenas para estudo. � claro, quando for para valer, voc� deve escrever c�digo melhor que o meu. Seus links precisam ter um atributo <b>title</b> que descreva bem seu destino, e "Abrir" n�o � um bom texto para se colocar em um link. Voc� sabe tamb�m que, neste �ltimo exemplo, depois de <b>if(!abriu)</b> voc� pode fazer o que quiser, e tamb�m deve saber que n�o � bom escrever scripts assim, no meio do seu HTML, e que document.write n�o � uma boa maneira de se exibir conte�do. Esperamos que estas id�ias lhe sejam �teis. Se voc� desenvolver algo �til com isso <a href="mailto:elciof+artigopopup@gmail.com" title="Email para o Elcio">conte pra gente</a>.</p>

		<blockquote>
		  Elcio Ferreira<br />
		  <a href="http://elcio.locaweb.com.br/">http://elcio.locaweb.com.br/</a><br />
		  <a href="mailto:elciof@icqmail.com">elciof@icqmail.com</a>
		</blockquote>



	</div>

<!-- #include file="../rodape.asp" -->

