# -*- encoding : utf-8 -*-
class SuporteController < ApplicationController
	def index
		@suportes = Admin::Conteudo.where("localizacao = 'suporte'").search(params[:texto_curto])
		#@suportes = Admin::Conteudo.all
		@menu = Admin::Menu.all
	end
end
