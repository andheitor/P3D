// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.pjax
//= require_tree .

function clickTitulo(t)
{
	if($('#ul'+t.id).is(":visible"))
	{
		$('#ul'+t.id).hide();
    $('#'+t.id).removeClass("tituloAberto");
    $('#'+t.id).addClass("titulo");
	}
	else
	{
		$('#ul'+t.id).show();
    $('#'+t.id).removeClass("titulo");
    $('#'+t.id).addClass("tituloAberto");
	}
	
}

function MudaVideo(url)
{
	$('#videoProduto').attr('src',url);
}
function CarouselEsquerda()
{
	var child = $('#carousel').children();
	var cont = 0;
	var ultima = 0;
	var primeira = 0;
	for (var i=0; i < child.length; i++) {
		if (child[i].style.cssText.indexOf('none') == -1 && jQuery.isNumeric(child[i].id))
		{
			ultima = child[i].id;
			if(ultima <= primeira || primeira == 0)
			{
				primeira = ultima;
			}
		}
		
	};
	ultima++;
	if (ultima <= QuantidadeCarrousel())
	{
		$('#' + primeira).hide();
		$('#' + ultima).show();
	}
}
function CarouselDireita()
{
	var child = $('#carousel').children();
	var cont = 0;
	for (var i=0; i < child.length; i++) {
		if (child[i].style.cssText.indexOf('none') == -1 && jQuery.isNumeric(child[i].id))
		{
			if(child[i].id > 1)
			{
				cont++;
				if (cont == 1) {
					var abre = child[i].id;
					abre--;
					$('#' + abre).show();
				};
				if (cont == 3) {
					$('#' + child[i].id).hide();	
				};
			}
		}	  
	};
}
$(document).ready(function () {
	var child = $('#carousel').children();
	var cont = 0;
	for (var i=0; i < child.length; i++) {
		if (jQuery.isNumeric(child[i].id))
		{
			cont++;
			if (cont > 3) {
				$('#' + cont).hide();
			};
		}	  
	};
});

function QuantidadeCarrousel()
{
	var child = $('#carousel').children();
	var cont = 0;
	for (var i=0; i < child.length; i++) {
		if (jQuery.isNumeric(child[i].id))
		{
			cont++;
		}	  
	}
	return cont;
}

jQuery(function($){
	
	$("#carouselEsquerda").click(function(){
		CarouselEsquerda();
	});
	$("#carouselDireita").click(function(){
		CarouselDireita();
	});
	$("#procurar_suporte input").keyup(function() {
		$.get($("#procurar_suporte").attr("action"), $("#procurar_suporte").serialize(), null, "script");
		return false;
	});

});

setInterval(function() {
	var cont = $('#hidBanner').val();
	if (cont != 3) {
		cont++;
	}else{
		cont = 1;
	}
	$('#banner').hide();
  	$('#banner').attr('src','assets/banner' + cont + '.jpg');
	$('#banner').show();
	 $('#hidBanner').val(cont)
}, 2000);

