	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

		<h2>O Caminho Suave para o Tableless</h2>
		<p>A maior parte dos desenvolvedores web, designers ou programadores, começaram antes do surgimento dos movimentos em prol dos <a href="http://www.webstandards.org/" title="Web Standards Project">padrões web</a>, usando tabelas para montar layouts em editores <acronym title="What You See Is What You Get, Editores Visuais">WYSIWYG</acronym>, e ainda hoje este método é usado na maioria dos projetos de internet. Logo, é natural que muita gente, ao começar a entender o valor dos <a href="http://www.webstandards.org/" title="Web Standards Project">padrões</a>, se pergunte como migrar do desenvolvimento "tradicional" para o desenvolvimento de código semanticamente coerente.</p>
		<p>É um caminho muito duro o que separa o desenvolvedor acostumado a editores visuais do desenvolvimento de código coerente. E é muito comum que o designer desista após uma primeira tentativa frustrada de desenvolver um website tableless, com layout <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> e <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> <a href="http://validator.w3.org/" title="W3C MarkUp Validation Service">validado</a>.</p>
		<p>Por isso gostaria de propor um caminho gradual, mais suave, para aqueles que querem se aventurar pela primeira vez pelos <a href="http://www.webstandards.org/" title="Web Standards Project">padrões web</a>. O princípio desse método é da recompensa. Você pode obter um grande benefício aproximando seu código dos <a href="http://www.webstandards.org/" title="Web Standards Project">padrões web</a>, mesmo que não faça tudo de uma vez. Quero mostrar como você pode começar, e obter benefícios imediatos.</p>
		<h2>Limpe seu HTML</h2>
		<p>A minha primeira recomendação é que você estude <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>. Comece pela formatação básica de fonte, cor e tamanho. Isso vai te garantir código menor e produtividade maior com pouquíssimo esforço.</p>
		<p>Assim, ao criar um item de menu, você vai evitar códigos como este:</p>
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
		<p>Como você pode ver, o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> é extremamente simples. Aprender esses quatro atributos, mais o "<a href="http://www.w3.org/TR/REC-CSS1#font-style">font-style</a>" (para fazer itálico), é a primeira coisa que eu recomendo. É claro, isso apenas faz cócegas nas possibilidades do <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, ainda há muito o que aprender, mas recomendo começar por aí porque é algo que você pode aprender em alguns minutos e vai te salvar muito, muito tempo. E você vai começar a ter o controle da formatação, tendo todas as definições de fonte em um único arquivo, podendo alterar, por exemplo, a qualquer momento, a fonte de todo o conteúdo ou de todos os menus do site.</p>
		<p>O passo seguinte para limpar seu HTML é se livrar do spacer.gif, aquele gif transparente de 1 pixel que se usa para dar espaços em tabelas, e das dezenas de tabelas aninhadas. Para isso vamos começar a estudar o "box-model".</p>
		<p>O pulo-do-gato aqui é um atributo <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> chamado <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>. O <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a> é a distância entre as bordas de um elemento e o texto dentro dele. Assim, se é preciso que o conteúdo de uma célula esteja a 10 pixels da borda esquerda, ao invés de inserir uma célula extra como espaçador, ou inserir mais uma tabela, basta definir uma classe para essa célula. Uma vez que você já está colocando a formatação no <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, provavelmente esta célula já tem uma classe. Então basta:</p>
		<pre>
.conteudo{
	<a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>-left:10px;
}
		</pre>
		<p>Isso vai fazer com que o texto esteja a 10 pixels da borda esquerda do documento. Ah, claro, o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> também pode livrar você de definir no HTML as bordas e o background das células de sua tabela. Lembre-se, quanto mais layout e formatação você colocar no <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, mais controle terá sobre seu site, principalmente em mudanças de layout durante o processo de produção e em futuras manutenções. O site também será mais leve para carregar.</p>
		<p>Concluímos então que, após aprender os atributos de formatação de fonte, o passo seguinte é aprender os atributos <a href="http://www.w3.org/TR/REC-CSS1#background">background</a>, <a href="http://www.w3.org/TR/REC-CSS1#border">border</a> e <a href="http://www.w3.org/TR/REC-CSS1#padding">padding</a>. Indo até aqui você com certeza será um desenvolvedor muito mais feliz! Depois de limpar seu HTML, ganhar controle sobre a formatação de seu site e se tornar muito mais produtivo, você está pronto para passar à segunda etapa, correndo atrás da semântica.</p>
		<h2>Começando o Trabalho de Gente Grande</h2>
		<p>Muito bem, agora você já pode limpar seu código. Vamos estudar um exemplo prático. No começo de cada uma de suas páginas você tem um título, cujo código hoje é assim:</p>
		<pre>
&lt;font face="Arial, Helvetica, Sans-serif" size="4" 
color="#FFFF00">&lt;b>Novidades&lt;/b>&lt;/font>
		</pre>
		<p>Ao limpar esse código, você vai substituir esse monte de tags por uma só. Que tag você vai usar? Como o <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> te permite formatar qualquer elemento, muita gente que começa a estudar o assunto acha que é indiferente que tag usar, e coloca algo como:</p>
		<pre>&lt;p class="titulo">Novidades&lt;/p></pre>
		<p>Agora, veja bem, outro desenvolvedor poderia resolver o mesmo problema com:</p>
		<pre>&lt;div class="titulo">Novidades&lt;/div></pre>
		<p>E o resultado visual poderia ser o mesmo. Acontece que há algo na natureza do HTML que nos diz que tag usar. Chamamos esse algo de "semântica": as tags do HTML tem significado. A tag P é para parágrafos, a tag DIV para divisões no conteúdo, e há uma série de tags para título, h1, h2, h3, h4, h5 e h6. Assim, se você pode usar qualquer tag, pode fazer assim:</p>
		<pre>&lt;h1>Novidades&lt;/h1></pre>
		<p>O que você ganha com essa preocupação? Os buscadores inteligentes podem ler semanticamente o conteúdo de um documento, entendendo que trecho de código é um título, por exemplo. Assim, escrever HTML semanticamente correto pode melhorar muito sua visibilidade em buscadores. O segundo bom motivo é que você vai saber para que serve cada tag se tiver que mexer nesse mesmo documento daqui a alguns meses. E vai ser mais fácil também se outra pessoa tiver que dar manutenção no seu código.</p>
		<p>Logo, use as tags do HTML para aquilo para o que foram criadas:</p>
		<ul>
			<li>dd, dl e dt para listas de definições (um glossário, por exemplo)</li>
			<li>h1 a h6 para títulos</li>
			<li>p para parágrafos</li>
			<li>abbr para abreviaturas e acronym para acrônimos</li>
			<li>blockquote e q para citações longas e curtas</li>
			<li>address para endereços (sabe aquele rodapé onde vai o endereço e o telefone da empresa?)</li>
			<li>ul e ol para listas e li para os itens da lista</li>
		</ul>
		<p>Você pode obter uma lista mais abrangente em:
		<a href="http://www.w3schools.com/xhtml/xhtml_reference.asp" title="XHTML Reference">http://www.w3schools.com/xhtml/xhtml_reference.asp</a>
		</p>
		<p>E formate tudo ao seu gosto com <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>.
		<h2>Finalmente, Livrando-se das Tabelas</h2>
		<p>Não há bons motivos para você eliminar a qualquer custo todas as tabelas de seu primeiro trabalho. Conheço alguns excelentes profissionais, muito talentosos, que fizeram um ótimo trabalho em sua primeira tentativa de tableless. Mas a maioria dos que eu vi tentarem demoraram muito para conseguir da primeira vez, e alguns não obtiveram os resultados que esperavam. Isso tudo serve para que você possa produzir mais rápido e melhor, não o contrário. Então vá com calma. Faça alguns estudos em tableless, comece eliminando parte das tabelas em seus primeiros trabalhos. Por exemplo, remover as células de tabela que formam o menu, trocando por uma lista (com as tags ul e li), é um ótimo desafio para o primeiro projeto.</p>
		<p>Ah, e não se esqueça que para dados como uma tabela periódica ou um calendário a solução semanticamente correta é a tabela mesmo. Ou seja, tableless não é ausência de tabelas, é o seu uso apenas onde é semanticamente justificável.</p>
		<p>Não vou entrar em detalhes aqui, porque já escrevi bastante sobre como construir um layout no <a href="http://www.tableless.com.br/tutorial/">Tutorial Tableless Básico</a>, mas o conselho é ir com calma, sem estresse. Você logo vai estar produzindo tableless mais fácil do que produz sites com tabelas.</p>
		<h2>XHTML</h2>
		<p>Há uma coisa que muita gente que está começando me pergunta: o que é e para que serve esse tal de <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a>? É muito mais simples do que parece. Um arquivo <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> é um arquivo HTML, que pode ser lido por qualquer browser. Não estamos falando de um novo HTML, com novas tags ou coisa assim. Pelo contrário, o <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> 1 foi feito para funcionar mesmo em navegadores antigos. Mas, ao mesmo tempo, Um arquivo <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> é também um arquivo <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> <a href="http://validator.w3.org/" title="W3C MarkUp Validation Service">válido</a>, que pode ser lido por qualquer interpretador de <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>.</p>
		<p>Meu primeiro conselho, nesse caso, é que você, se não trabalha com <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>, deixe preocupação com o <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> para depois de dominar bem o código semântico e o layout tableless. Não porque seja complicado, pelo contrário, transformar bom HTML em <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> é bem simples, mas simplesmente porque você pode obter benefícios muito significativos, e muito mais rapidamente, aprendendo <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a> do que <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a>.</p>
		<p>O segundo conselho é que você comece a estudar o assunto. Depois de dominar bem layouts <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>, mergulhe no <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>. A maioria dos bancos de dados hoje permite extrair dados diretamente em <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> e todas as plataformas de aplicações web trabalham bem com <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>. E com a poderosa linguagem <a href="http://www.w3.org/Style/XSL/" title="Extensible Stylesheet Language">XSLT</a> você pode muito facilmente oferecer seus os dados em <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> para o navegador. Nosso website (<a href="http://www.atipico.com.br/" title="Atípico - Websites e aplicações internet de resultado">www.atipico.com.br</a>) tem seus dados extraídos do banco de dados em <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a>, e é todo construído com <a href="http://www.w3.org/Style/XSL/" title="Extensible Stylesheet Language">XSLT</a>, <a href="http://www.w3schools.com/xhtml/" title="Extensible HyperText Markup Language">XHTML</a> e <a href="http://www.w3.org/Style/CSS/" title="Cascading Style Sheets">CSS</a>. Isso nos permitiu praticamente dobrar a produtividade.</p>
		<h2>Voando Alto</h2>
		<p>Estamos falando de muito mais do que criar sites estilosos. Há duas semanas esteve aqui um amigo com um Palm novo, um <a href="http://www.palmone.com/us/products/handhelds/zire71/">Zire 71</a>, e um celular com acesso à internet. Isso está se tornando cada vez mais barato e comum. Conheço também uma porção de empresas e instituições, entre elas uma série significativa de TeleCentros e órgãos públicos, que estão adotando <a href="http://www.google.com.br/search?q=Linux&btnI=1&lr=lang_pt">Linux</a> como sistema operacional para desktops. O <a href="http://www.google.com.br" title="O Oráculo">Google</a> hoje é responsável por 90% do tráfego que meu site consegue de buscadores. É o primeiro colocado absoluto entre os buscadores. E conseguiu isso indexando semanticamente o conteúdo real dos sites. Praticamente todas as plataformas web estão oferendo suporte a <a href="http://www.w3.org/XML/" title="Extensible Markup Language">XML</a> e apostando na idéia de <a href="http://www.google.com.br/search?q=webservices+xml&btnI=1&lr=lang_pt">webservices</a>.</p>
		<p>Quem segue os <a href="http://www.webstandards.org/" title="Web Standards Project">padrões web</a> não precisa ter medo do futuro. Não importa que browser vai ser o mais usado daqui a dois anos, que tecnologia vai estar na moda ou de onde as pessoas vão estar usando a internet. Seu site estará lá, leve, acessível, atual e útil.</p>
		<br />
		<hr />
		<blockquote>
		  Elcio Ferreira<br />
		  <a href="http://elcio.locaweb.com.br/">http://elcio.locaweb.com.br/</a><br />
		  <a href="mailto:elciof@icqmail.com">elciof@icqmail.com</a>
		</blockquote>


	</div>

<!-- #include file="../rodape.asp" -->

