<?xml version="1.0" encoding="iso-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
		<xsl:apply-templates select="blog/mensagem" />
</xsl:template>

<xsl:template match="//mensagem">

		<h2 class="blogentry"><xsl:value-of select="titulo"/></h2>
		
		<p>
			<xsl:value-of select="texto"/>
		</p>
		
		<p>
			<xsl:attribute name="class">assinatura</xsl:attribute>
			<xsl:apply-templates select="diego" /><xsl:apply-templates select="elcio" />
			| 
			<xsl:value-of select="data"/>
			|
			<a>
				<xsl:attribute name="href">mensagem.asp?id=<xsl:value-of select="@id"/></xsl:attribute>
				<xsl:if test="count(comentario)=0">
					comente!
				</xsl:if>
				<xsl:if test="count(comentario)=1">
					1 comentário
				</xsl:if>
				<xsl:if test="count(comentario)>1">
					<xsl:value-of select="count(comentario)" />
					comentários
				</xsl:if>
			</a> | <a>
				<xsl:attribute name="href">mensagem.asp?id=<xsl:value-of select="@id"/></xsl:attribute>permalink</a>
		</p>

</xsl:template>

<xsl:template match="diego">
	<a href="http://eyesmiles.tableless.com.br/" title="Visite meu blog pessoal">Diego Alberto Eis</a>
</xsl:template>

<xsl:template match="elcio">
	<a href="http://elcio.locaweb.com.br/" title="fechaTAG &lt;the brógui&gt; - XML XHTML CSS WAP ASP Javascript VBScript Usabilidade Acessibilidade">Elcio Luiz Ferreira</a>
</xsl:template>

	
</xsl:stylesheet>
