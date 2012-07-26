# -*- encoding : utf-8 -*-
class EmpresaController < ApplicationController
  def index    
		@conteudo_empresa = Admin::Conteudo.where("menu = 'Empresa' and localizacao = 'empresa'")

		@video1 = Admin::Conteudo.where("menu = 'Empresa' and localizacao = 'videos1'")
		@video2 = Admin::Conteudo.where("menu = 'Empresa' and localizacao = 'videos2'")
	@menu = Admin::Menu.all

  end
end
