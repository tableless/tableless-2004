	<!-- #include file="cab.asp" -->

	<!-- #include file="menu.asp" -->

	<!-- #include file="sites.asp" -->

 	<!-- #include file="buscador.asp" -->

		<!-- #include file="recomendado.asp" -->

<!-- #include file="arquivo.asp" --> 
	<!-- #include file="franquia.asp" --> 


	<div id="txtcont">
		<h2>
		Treinamento At&#237;pico
		</h2>

		<p>Você pediu, nós atendemos. Estamos oferecendo, através da <a href="http://www.atipico.com.br/" title="Atípico - Websites e Aplicações Internet de Resultado">Atípico</a>, um curso de desenvolvimento web baseado em padrões. O curso destina-se a programadores, designers e equipes web que já conhecem o processo de desenvolvimento tradicional e querem ampliar sua eficiência. Aprenda a construir sites tableless, rápidos, que funcionam em qualquer navegador e aparecem bem nos buscadores. <a href="http://www.atipico.com.br/curso.asp">Saiba mais</a> sobre o curso ou escreva pra gente no <a href="mailto:curso@atipico.com.br" title="E-mail para curso@atipico.com.br">curso@atipico.com.br</a>.</p>
<%
if request("conteudo")<>"secreto" then response.redirect "http://www.atipico.com.br/curso"
%>

		<h2>Programa do Curso</h2>

		<hr noshade size=1>
		<h2>Módulo 1: Fundamentos</h2><ul><li> A história do HTML e o XML (2 horas)<br></li><li> Web Standards e a largura de banda (2 horas)</ul></li>

		<p>Total: 4 horas<br></p>
		
		<h2>Módulo 2: XHTML e XML</h2><ul><li> Fundamentos do XML (2 horas)<br></li><li> HTML, XHTML e XML (2 horas)<br></li><li> Exercício de criação e validação de documento XHTML/Strict (4 horas)</ul></li>

		<p>Total: 8 horas<br></p>
		
		<h2>Módulo 3: XSLT (opcional, para desenvolvedores)</h2><ul><li> Processadores XML e o XMLDOM (4 horas)<br></li><li> Escrevendo XSLT (4 horas)<br></li><li> Exercício de criação de XSLT (4 horas)</ul></li>

		<p>Total: 12 horas<br></p>
		
		<h2>Módulo 4: CSS formating</h2><ul><li> Boas práticas com CSS (1 hora)<br></li><li> Formatando com CSS (3 horas)<br></li><li> Exercício de CSS Formating (4 horas)</ul></li>

		<p>Total: 8 horas<br></p>
		
		<h2>Módulo 5: Fundamentos de CSS-P</h2><ul><li> Boas práticas com CSS-P (1 hora)<br></li><li> Box Model Hacking (3 horas)<br></li><li> Exercício de Box Model (2 horas)<br></li><li> Float e Position (4 horas)<br></li><li> Exercício de Construção de Layout Tableless(2 horas)</ul></li>

		<p>Total: 12 horas<br></p>
		
		<h2>Módulo 6: Avançado - Dicas e Truques (opcional)</h2><ul><li> Substituição de Imagens e Estrutura Semântica (4 horas)<br></li><li> Controle de Listas (4 horas)<br></li><li> Exercício de Construção de Layout (4 horas)</ul></li>

		<p>Total: 12 horas<br /></p>
		
		<h2>Módulo 7: Avançado - Acessibilidade (opcional)</h2><ul><li> Searchbots, PDAS, screenreaders e outras plataformas (2 horas)<br></li><li> Cynthia, WAI e Section 508 (2 horas)<br></li><li> Exercício de Adaptação para Acessibilidade (4 horas)</ul></li>

		<p>Total: 8 horas<br /></p>
		
		<h2>Módulo 8: Avançado - DOM e Javascript crossbrowser (para desenvolvedores, requer conhecimento básico de javascript)</h2><ul><li> Tudo o que você precisa saber (4 horas)<br></li><li> Exercício de Javascript crossbrowser (4 horas)</ul></li>

		<p>Total: 8 horas<br /></p>
		
		<hr /><br />
	</div>

<!-- #include file="rodape.asp" -->

