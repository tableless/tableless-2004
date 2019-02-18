	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

		<h2>A informa��o e a formata��o (parte 1)</h2>

		<p>
			Se voc� j� leu alguma coisa sobre Tableless, j� deve ter percebido que nesse m�todo n�s separamos a informa��o da formata��o.<br />
			Para fazer a formata��o do site, ou seja, para literalmente aplicarmos o design do site, n�s usamos o CSS (as famosas Folhas de Estilo), que eu julgo ser a principal ferramenta do desenvolvedor para criar sites tableless. Para a apresenta��o da informa��o, voc� pode usar HTML ou XHTML, o que voc� achar mais apropriado.
		</p>
		<p>
			A separa��o entre informa��o e formata��o traz muitas vantagens, mas vou citar apenas duas, divididos em dois artigos:
			<ol>
				<li>Facilidade de Manuten��o</li>
				<li>Maior produtividade</li>
			</ol>
		</p>
		<p>
			Ent�o, vamos ao que interessa.
		</p>

			<h2>Facilidade de Manuten��o</h2>
		<p>
			Separando a informa��o da formata��o, voc� j� organiza grande parte do c�digo, pois voc� os separa em arquivos distintos, um arquivo .css para a formata��o e outro arquivo .html (.asp, .php. seja l� o que for) para a informa��o. Esta simples organiza��o, lhe permite fazer com rapidez e objetividade qualquer tipo de manuten��o, sendo ela grande ou pequena.
		</p>
		<p>
			Imagine a seguinte situa��o:<br />
			Voc� est� no final daquele grande projeto, aquele site em que voc� fica horas desenhando tabelas, puxando daqui e dali, acertando medidas, etc... e quando voc� olha para o lado para descansar um pouco as vistas, voc� chega a pensar que seguiu o coelho branco...<br />
			Ent�o, sem mais nem menos seu chefe lhe chama para conversar sobre o projeto e fala que o cliente pediu para que todos os t�tulos do site mudassem de cor, voc� o olha desacreditado, e j� contando silenciosamente quantos t�tulos tem no site, se dirige para sua mesa e decide por onde come�ar.
		</p>
		<p>
			Se voc� n�o passou por esta situa��o, acredite, muitos desenvolvedores j� passaram por isso.
		</p>
		<p>
			Vamos supor que o desenvolvedor do exemplo acima, usasse para apresentar os t�tulos a tag &lt;h1&gt;&lt;/h1&gt;, ele simplesmente atribuiria pelo CSS um valor para que todas as tags &lt;h1&gt; tivessem a cor desejada, em poucos segundos, ele mudaria a cor de  todos os t�tulos do site, e isso tudo, sem mexer no arquivo HTML, economizando o tempo que ele levaria abrindo v�rios arquivos para procurar as intermin�veis tags  &lt;font color="#666666"&gt;&lt;/font&gt; somente para mudar uma simples cor. Problemas como este, n�o v�o mais tomar o precioso tempo do desenvolvedor.
		</p>
		<p>
			Agora, e se a manuten��o n�o fosse simples assim? E se fosse mais um pouco complicada, como do tipo mudar todo o layout do site? E se voc� pudesse mudar todo o layout do site, mudando apenas um arquivo .css?<br />
			Em um site tableless, o c�digo HTML fica livre de tags desnecess�rias do tipo: &lt;font&gt; &lt;center&gt;, deixando voc� � vontade para modificar o visual do site usando apenas CSS, te dando total controle sobre localiza��o de objetos, tamanhos, cores e fam�lias de fontes, medidas, alinhamentos de texto, etc...
		</p>
		<p>
			Fazendo isso, voc� pode escrever v�rios arquivos CSS distintos, que modifiquem o visual do site completamente, e o melhor, sem tocar numa letra do arquivo HTML, ele continua sendo o mesmo.
		</p>
		<p>
			V�rios sites usam est� t�cnica, deixando o usu�rio escolher o layout que mais lhe agrada, veja alguns exemplos:<br />
			<a href="http://www.csszengarden.com/">http://www.csszengarden.com/</a><br />
			<a href="http://www.meyerweb.com/">http://www.meyerweb.com/</a><br />
			<a href="http://www.zeldman.com/">http://www.zeldman.com/</a><br />
			<a href="http://jeffhowden.com/styleswitcher/">http://jeffhowden.com/styleswitcher/</a><br />
			<a href="http://www.accessanet.com/standard/styleswitcher.html">http://www.accessanet.com/standard/styleswitcher.html</a><br />
			<a href="http://roselli.org/adrian/">http://roselli.org/adrian/</a><br />
			<a href="http://www.alltheweb.com/help/alchemist/gallery.html">http://www.alltheweb.com/help/alchemist/gallery.html</a><br />
		</p>
		<p>
			Realmente � uma m�o na roda, n�o acha?<br />
			Tudo organizado, formata��o de um lado, informa��o do outro, sem complica��o... Seu c�digo fica enxuto, limpo, muito menor do que se voc� tivesse feito do jeito tradicional, lhe dando menos dor de cabe�a, e mais tempo. Ainda por cima, voc� contribui para uma web mais sem�ntica.
		</p>
		<p>
			No pr�ximo artigo trataremos sobre o ganho de produtividade observado com a aplica��o da metodologia tableless.
		</p>
		<p>
			Leitura Recomendada:
			<a href="http://www.pedromendes.com/words/molly-200211-truelanguage1.html">http://www.pedromendes.com/words/molly-200211-truelanguage1.html</a>
		</p>
		<br />
		<hr />
		<!-- #include file="diegoass.asp" -->


	</div>

<!-- #include file="../rodape.asp" -->

