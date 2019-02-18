	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

		<h2>O Caminho Suave para o Tableless</h2>
		<p>A maior parte dos desenvolvedores web, designers ou programadores, come�aram antes do surgimento dos movimentos em prol dos <a href="http://www.webstandards.org/" title="Web Standards Project">padr�es web</a>, usando tabelas para montar layouts em editores <acronym title="What You See Is What You Get, Editores Visuais">WYSIWYG</acronym>, e ainda hoje este m�todo � usado na maioria dos projetos de internet. Logo, � natural que muita gente, ao come�ar a entender o valor dos <a href="http://www.webstandards.org/" title="Web Standards Project">padr�es</a>, se pergunte como migrar do desenvolvimento "tradicional" para o desenvolvimento de c�digo semanticamente coerente.</p>
		<p>� um caminho muito duro o que separa o desenvolvedor acostumado a editores visuais do desenvolvimento de c�digo coerente. E � muito comum que o designer desista ap�s uma primeira tentativa frustrada de desenvolver um website tableless, com layout <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> e <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> <a href="http://validator.w3.org/" title="W3C MarkUp Validation Service">validado</a>.</p>
		<p>Por isso gostaria de propor um caminho gradual, mais suave, para aqueles que querem se aventurar pela primeira vez pelos <a href="http://www.webstandards.org/" title="Web Standards Project">padr�es web</a>. O princ�pio desse m�todo � da recompensa. Voc� pode obter um grande benef�cio aproximando seu c�digo dos <a href="http://www.webstandards.org/" title="Web Standards Project">padr�es web</a>, mesmo que n�o fa�a tudo de uma vez. Quero mostrar como voc� pode come�ar, e obter benef�cios imediatos.</p>
		<h2>Limpe seu HTML</h2>
		<p>A minha primeira recomenda��o � que voc� estude <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>. Comece pela formata��o b�sica de fonte, cor e tamanho. Isso vai te garantir c�digo menor e produtividade maior com pouqu�ssimo esfor�o.</p>
		<p>Assim, ao criar um item de menu, voc� vai evitar c�digos como este:</p>
		<pre>
&lt;a href="parceiros.asp">&lt;font 
face="Arial, Helvetica, Sans-serif" size="2" 
color="#FF3300">&lt;b>Parceiros&lt;/b>&lt;/font>&lt;/a>
		</pre>
		<p>Colocando no lugar:</p>
		<pre>&lt;a href="parceiros.asp" class="menu">Parceiros&lt;/a></pre>
		<p>Tendo no <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>:</p>
		<pre>
.menu{
	<a href="http://www.w3.org/TR/REC-CSS1#font-family">font-family</a>: Arial, Helvetica, Sans-serif;
	<a href="http://www.w3.org/TR/REC-CSS1#font-size">font-size</a>: 80%;
	<a href="http://www.w3.org/TR/REC-CSS1#font-weight">font-weight</a>: bold;
	<a href="http://www.w3.org/TR/REC-CSS1#color">color</a>:#FF3300;
}
		</pre>
		<p>Como voc� pode ver, o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> � extremamente simples. Aprender esses quatro atributos, mais o "<a href="http://www.w3.org/TR/REC-CSS1#font-style">font-style</a>" (para fazer it�lico), � a primeira coisa que eu recomendo. � claro, isso apenas faz c�cegas nas possibilidades do <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, ainda h� muito o que aprender, mas recomendo come�ar por a� porque � algo que voc� pode aprender em alguns minutos e vai te salvar muito, muito tempo. E voc� vai come�ar a ter o controle da formata��o, tendo todas as defini��es de fonte em um �nico arquivo, podendo alterar, por exemplo, a qualquer momento, a fonte de todo o conte�do ou de todos os menus do site.</p>
		<p>O passo seguinte para limpar seu HTML � se livrar do spacer.gif, aquele gif transparente de 1 pixel que se usa para dar espa�os em tabelas, e das dezenas de tabelas aninhadas. Para isso vamos come�ar a estudar o "box-model".</p>
		<p>O pulo-do-gato aqui � um atributo <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> chamado <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>. O <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a> � a dist�ncia entre as bordas de um elemento e o texto dentro dele. Assim, se � preciso que o conte�do de uma c�lula esteja a 10 pixels da borda esquerda, ao inv�s de inserir uma c�lula extra como espa�ador, ou inserir mais uma tabela, basta definir uma classe para essa c�lula. Uma vez que voc� j� est� colocando a formata��o no <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, provavelmente esta c�lula j� tem uma classe. Ent�o basta:</p>
		<pre>
.conteudo{
	<a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>-left:10px;
}
		</pre>
		<p>Isso vai fazer com que o texto esteja a 10 pixels da borda esquerda do documento. Ah, claro, o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> tamb�m pode livrar voc� de definir no HTML as bordas e o background das c�lulas de sua tabela. Lembre-se, quanto mais layout e formata��o voc� colocar no <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, mais controle ter� sobre seu site, principalmente em mudan�as de layout durante o processo de produ��o e em futuras manuten��es. O site tamb�m ser� mais leve para carregar.</p>
		<p>Conclu�mos ent�o que, ap�s aprender os atributos de formata��o de fonte, o passo seguinte � aprender os atributos <a href="http://www.w3.org/TR/REC-CSS1#background">background</a>, <a href="http://www.w3.org/TR/REC-CSS1#border">border</a> e <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>. Indo at� aqui voc� com certeza ser� um desenvolvedor muito mais feliz! Depois de limpar seu HTML, ganhar controle sobre a formata��o de seu site e se tornar muito mais produtivo, voc� est� pronto para passar � segunda etapa, correndo atr�s da sem�ntica.</p>
		<h2>Come�ando o Trabalho de Gente Grande</h2>
		<p>Muito bem, agora voc� j� pode limpar seu c�digo. Vamos estudar um exemplo pr�tico. No come�o de cada uma de suas p�ginas voc� tem um t�tulo, cujo c�digo hoje � assim:</p>
		<pre>
&lt;font face="Arial, Helvetica, Sans-serif" size="4" 
color="#FFFF00">&lt;b>Novidades&lt;/b>&lt;/font>
		</pre>
		<p>Ao limpar esse c�digo, voc� vai substituir esse monte de tags por uma s�. Que tag voc� vai usar? Como o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> te permite formatar qualquer elemento, muita gente que come�a a estudar o assunto acha que � indiferente que tag usar, e coloca algo como:</p>
		<pre>&lt;p class="titulo">Novidades&lt;/p></pre>
		<p>Agora, veja bem, outro desenvolvedor poderia resolver o mesmo problema com:</p>
		<pre>&lt;div class="titulo">Novidades&lt;/div></pre>
		<p>E o resultado visual poderia ser o mesmo. Acontece que h� algo na natureza do HTML que nos diz que tag usar. Chamamos esse algo de "sem�ntica": as tags do HTML tem significado. A tag P � para par�grafos, a tag DIV para divis�es no conte�do, e h� uma s�rie de tags para t�tulo, h1, h2, h3, h4, h5 e h6. Assim, se voc� pode usar qualquer tag, pode fazer assim:</p>
		<pre>&lt;h1>Novidades&lt;/h1></pre>
		<p>O que voc� ganha com essa preocupa��o? Os buscadores inteligentes podem ler semanticamente o conte�do de um documento, entendendo que trecho de c�digo � um t�tulo, por exemplo. Assim, escrever HTML semanticamente correto pode melhorar muito sua visibilidade em buscadores. O segundo bom motivo � que voc� vai saber para que serve cada tag se tiver que mexer nesse mesmo documento daqui a alguns meses. E vai ser mais f�cil tamb�m se outra pessoa tiver que dar manuten��o no seu c�digo.</p>
		<p>Logo, use as tags do HTML para aquilo para o que foram criadas:</p>
		<ul>
			<li>dd, dl e dt para listas de defini��es (um gloss�rio, por exemplo)</li>
			<li>h1 a h6 para t�tulos</li>
			<li>p para par�grafos</li>
			<li>abbr para abreviaturas e acronym para acr�nimos</li>
			<li>blockquote e q para cita��es longas e curtas</li>
			<li>address para endere�os (sabe aquele rodap� onde vai o endere�o e o telefone da empresa?)</li>
			<li>ul e ol para listas e li para os itens da lista</li>
		</ul>
		<p>Voc� pode obter uma lista mais abrangente em:
		<a href="http://www.w3schools.com/xhtml/xhtml_reference.asp" title="XHTML Reference">http://www.w3schools.com/xhtml/xhtml_reference.asp</a>
		</p>
		<p>E formate tudo ao seu gosto com <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>.
		<h2>Finalmente, Livrando-se das Tabelas</h2>
		<p>N�o h� bons motivos para voc� eliminar a qualquer custo todas as tabelas de seu primeiro trabalho. Conhe�o alguns excelentes profissionais, muito talentosos, que fizeram um �timo trabalho em sua primeira tentativa de tableless. Mas a maioria dos que eu vi tentarem demoraram muito para conseguir da primeira vez, e alguns n�o obtiveram os resultados que esperavam. Isso tudo serve para que voc� possa produzir mais r�pido e melhor, n�o o contr�rio. Ent�o v� com calma. Fa�a alguns estudos em tableless, comece eliminando parte das tabelas em seus primeiros trabalhos. Por exemplo, remover as c�lulas de tabela que formam o menu, trocando por uma lista (com as tags ul e li), � um �timo desafio para o primeiro projeto.</p>
		<p>Ah, e n�o se esque�a que para dados como uma tabela peri�dica ou um calend�rio a solu��o semanticamente correta � a tabela mesmo. Ou seja, tableless n�o � aus�ncia de tabelas, � o seu uso apenas onde � semanticamente justific�vel.</p>
		<p>N�o vou entrar em detalhes aqui, porque j� escrevi bastante sobre como construir um layout no <a href="http://www.tableless.com.br/tutorial/">Tutorial Tableless B�sico</a>, mas o conselho � ir com calma, sem estresse. Voc� logo vai estar produzindo tableless mais f�cil do que produz sites com tabelas.</p>
		<h2>XHTML</h2>
		<p>H� uma coisa que muita gente que est� come�ando me pergunta: o que � e para que serve esse tal de <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a>? � muito mais simples do que parece. Um arquivo <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> � um arquivo HTML, que pode ser lido por qualquer browser. N�o estamos falando de um novo HTML, com novas tags ou coisa assim. Pelo contr�rio, o <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> 1 foi feito para funcionar mesmo em navegadores antigos. Mas, ao mesmo tempo, Um arquivo <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> � tamb�m um arquivo <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> <a href="http://validator.w3.org/" title="W3C MarkUp Validation Service">v�lido</a>, que pode ser lido por qualquer interpretador de <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>.</p>
		<p>Meu primeiro conselho, nesse caso, � que voc�, se n�o trabalha com <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>, deixe preocupa��o com o <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> para depois de dominar bem o c�digo sem�ntico e o layout tableless. N�o porque seja complicado, pelo contr�rio, transformar bom HTML em <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> � bem simples, mas simplesmente porque voc� pode obter benef�cios muito significativos, e muito mais rapidamente, aprendendo <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> do que <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a>.</p>
		<p>O segundo conselho � que voc� comece a estudar o assunto. Depois de dominar bem layouts <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, mergulhe no <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>. A maioria dos bancos de dados hoje permite extrair dados diretamente em <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> e todas as plataformas de aplica��es web trabalham bem com <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>. E com a poderosa linguagem <a href="http://www.w3.org/Style/XSL/" title="Extensible Stylesheet Language">XSLT</a> voc� pode muito facilmente oferecer seus os dados em <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> para o navegador. Nosso website (<a href="http://www.atipico.com.br/" title="At�pico - Websites e aplica��es internet de resultado">www.atipico.com.br</a>) tem seus dados extra�dos do banco de dados em <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>, e � todo constru�do com <a href="http://www.w3.org/Style/XSL/" title="Extensible Stylesheet Language">XSLT</a>, <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> e <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>. Isso nos permitiu praticamente dobrar a produtividade.</p>
		<h2>Voando Alto</h2>
		<p>Estamos falando de muito mais do que criar sites estilosos. H� duas semanas esteve aqui um amigo com um Palm novo, um <a href="http://www.palmone.com/us/products/handhelds/zire71/">Zire 71</a>, e um celular com acesso � internet. Isso est� se tornando cada vez mais barato e comum. Conhe�o tamb�m uma por��o de empresas e institui��es, entre elas uma s�rie significativa de TeleCentros e �rg�os p�blicos, que est�o adotando <a href="http://www.google.com.br/search?q=Linux&btnI=1&lr=lang_pt">Linux</a> como sistema operacional para desktops. O <a href="http://www.google.com.br" title="O Or�culo">Google</a> hoje � respons�vel por 90% do tr�fego que meu site consegue de buscadores. � o primeiro colocado absoluto entre os buscadores. E conseguiu isso indexando semanticamente o conte�do real dos sites. Praticamente todas as plataformas web est�o oferendo suporte a <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> e apostando na id�ia de <a href="http://www.google.com.br/search?q=webservices+xml&btnI=1&lr=lang_pt">webservices</a>.</p>
		<p>Quem segue os <a href="http://www.webstandards.org/" title="Web Standards Project">padr�es web</a> n�o precisa ter medo do futuro. N�o importa que browser vai ser o mais usado daqui a dois anos, que tecnologia vai estar na moda ou de onde as pessoas v�o estar usando a internet. Seu site estar� l�, leve, acess�vel, atual e �til.</p>
		<br />
		<hr />
		<blockquote>
		  Elcio Ferreira<br />
		  <a href="http://elcio.locaweb.com.br/">http://elcio.locaweb.com.br/</a><br />
		  <a href="mailto:elciof@icqmail.com">elciof@icqmail.com</a>
		</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

