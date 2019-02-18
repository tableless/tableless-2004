home=0
internas=1

banners=[new Array(),new Array()]
function addBanner(html,credits,classe){
	for(var i=0;i<credits;i++)
		banners[classe][banners[classe].length]=html
}
function rndBanner(classe){
	return banners[classe][parseInt(Math.random()*1000)%banners[classe].length]
}

/***********************************************
Bota os banners aqui
 ***********************************************/

addBanner("<a href='http://ads.iphotel.com.br/?tless01' target='_black'><img src='http://www.tableless.com.br/banners/iphotel_banner.gif' border='0' alt='Este site é hospedado pela IPHotel' title='Este site é hospedado pela IPHotel' /></a>",35,home)
addBanner("<a href='http://www.atipico.com.br/curso.asp'><img src='http://www.tableless.com.br/banners/banneratipico.gif' alt='Atípico - WebSite e Aplicações internet de resultado' title='Atípico - WebSite e Aplicações internet de resultado' /></a>",65,home)

addBanner("<a href='http://ads.iphotel.com.br/?tless01' target='_black'><img src='http://www.tableless.com.br/banners/iphotel_banner.gif' border='0' alt='Este site é hospedado pela IPHotel' title='Este site é hospedado pela IPHotel' /></a>",45,internas)
addBanner("<a href='http://www.atipico.com.br/curso.asp'><img src='http://www.tableless.com.br/banners/banneratipico.gif' alt='Atípico - WebSite e Aplicações internet de resultado' title='Atípico - WebSite e Aplicações internet de resultado' /></a>",45,internas)