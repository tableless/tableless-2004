	<!-- #include file="../cab.asp" -->

	<!-- #include file="../menu.asp" -->

	<!-- #include file="../sites.asp" -->
 	<!-- #include file="../buscador.asp" -->
	<!-- #include file="../recomendado.asp" -->

	<!-- #include file="../arquivo.asp" -->

	<div id="txtcont">

		<h2>A informação e a formatação (parte 1)</h2>

		<p>
			Se você já leu alguma coisa sobre Tableless, já deve ter percebido que nesse método nós separamos a informação da formatação.<br />
			Para fazer a formatação do site, ou seja, para literalmente aplicarmos o design do site, nós usamos o CSS (as famosas Folhas de Estilo), que eu julgo ser a principal ferramenta do desenvolvedor para criar sites tableless. Para a apresentação da informação, você pode usar HTML ou XHTML, o que você achar mais apropriado.
		</p>
		<p>
			A separação entre informação e formatação traz muitas vantagens, mas vou citar apenas duas, divididos em dois artigos:
			<ol>
				<li>Facilidade de Manutenção</li>
				<li>Maior produtividade</li>
			</ol>
		</p>
		<p>
			Então, vamos ao que interessa.
		</p>

			<h2>Facilidade de Manutenção</h2>
		<p>
			Separando a informação da formatação, você já organiza grande parte do código, pois você os separa em arquivos distintos, um arquivo .css para a formatação e outro arquivo .html (.asp, .php. seja lá o que for) para a informação. Esta simples organização, lhe permite fazer com rapidez e objetividade qualquer tipo de manutenção, sendo ela grande ou pequena.
		</p>
		<p>
			Imagine a seguinte situação:<br />
			Você está no final daquele grande projeto, aquele site em que você fica horas desenhando tabelas, puxando daqui e dali, acertando medidas, etc... e quando você olha para o lado para descansar um pouco as vistas, você chega a pensar que seguiu o coelho branco...<br />
			Então, sem mais nem menos seu chefe lhe chama para conversar sobre o projeto e fala que o cliente pediu para que todos os títulos do site mudassem de cor, você o olha desacreditado, e já contando silenciosamente quantos títulos tem no site, se dirige para sua mesa e decide por onde começar.
		</p>
		<p>
			Se você não passou por esta situação, acredite, muitos desenvolvedores já passaram por isso.
		</p>
		<p>
			Vamos supor que o desenvolvedor do exemplo acima, usasse para apresentar os títulos a tag &lt;h1&gt;&lt;/h1&gt;, ele simplesmente atribuiria pelo CSS um valor para que todas as tags &lt;h1&gt; tivessem a cor desejada, em poucos segundos, ele mudaria a cor de  todos os títulos do site, e isso tudo, sem mexer no arquivo HTML, economizando o tempo que ele levaria abrindo vários arquivos para procurar as intermináveis tags  &lt;font color="#666666"&gt;&lt;/font&gt; somente para mudar uma simples cor. Problemas como este, não vão mais tomar o precioso tempo do desenvolvedor.
		</p>
		<p>
			Agora, e se a manutenção não fosse simples assim? E se fosse mais um pouco complicada, como do tipo mudar todo o layout do site? E se você pudesse mudar todo o layout do site, mudando apenas um arquivo .css?<br />
			Em um site tableless, o código HTML fica livre de tags desnecessárias do tipo: &lt;font&gt; &lt;center&gt;, deixando você à vontade para modificar o visual do site usando apenas CSS, te dando total controle sobre localização de objetos, tamanhos, cores e famílias de fontes, medidas, alinhamentos de texto, etc...
		</p>
		<p>
			Fazendo isso, você pode escrever vários arquivos CSS distintos, que modifiquem o visual do site completamente, e o melhor, sem tocar numa letra do arquivo HTML, ele continua sendo o mesmo.
		</p>
		<p>
			Vários sites usam está técnica, deixando o usuário escolher o layout que mais lhe agrada, veja alguns exemplos:<br />
			<a href="http://www.csszengarden.com/">http://www.csszengarden.com/</a><br />
			<a href="http://www.meyerweb.com/">http://www.meyerweb.com/</a><br />
			<a href="http://www.zeldman.com/">http://www.zeldman.com/</a><br />
			<a href="http://jeffhowden.com/styleswitcher/">http://jeffhowden.com/styleswitcher/</a><br />
			<a href="http://www.accessanet.com/standard/styleswitcher.html">http://www.accessanet.com/standard/styleswitcher.html</a><br />
			<a href="http://roselli.org/adrian/">http://roselli.org/adrian/</a><br />
			<a href="http://www.alltheweb.com/help/alchemist/gallery.html">http://www.alltheweb.com/help/alchemist/gallery.html</a><br />
		</p>
		<p>
			Realmente é uma mão na roda, não acha?<br />
			Tudo organizado, formatação de um lado, informação do outro, sem complicação... Seu código fica enxuto, limpo, muito menor do que se você tivesse feito do jeito tradicional, lhe dando menos dor de cabeça, e mais tempo. Ainda por cima, você contribui para uma web mais semântica.
		</p>
		<p>
			No próximo artigo trataremos sobre o ganho de produtividade observado com a aplicação da metodologia tableless.
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

