# -*- encoding : utf-8 -*-
class ClientesController < ApplicationController
  def index    
	@clientes = Admin::Conteudo.where("menu = 'Clientes' and localizacao = 'imagem_cliente'")
	@menu = Admin::Menu.all
  end
end
