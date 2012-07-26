# -*- encoding : utf-8 -*-
class AconteceController < ApplicationController
  def index    
	@acontece_conteudos = Admin::Conteudo.acontece.where("localizacao = 'news'")
	@menu = Admin::Menu.all
  end
end
