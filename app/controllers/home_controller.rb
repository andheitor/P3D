# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index    
    @admin_conteudos_texto_centro = Admin::Conteudo.where("menu = 'home' and localizacao = 'texto_centro'")
    @admin_conteudos_carousel = Admin::Conteudo.where("menu = 'home' and localizacao = 'carousel'")
    @admin_conteudos_carousel_count = Admin::Conteudo.where("menu = 'home' and localizacao = 'carousel'").count
  	
	@menu = Admin::Menu.all
  end
end
