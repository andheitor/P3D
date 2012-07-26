# -*- encoding : utf-8 -*-
class NossoprodutoController < ApplicationController
  def index    
		@titulo = Admin::Conteudo.nosso_produto_videos.group(:texto_curto)
		@listaVideos ||= Admin::Conteudo.where("texto_curto = ?",params[:texto_curto]).group(:link)
		@listaFotos ||= Admin::Conteudo.where("texto_curto = ?",params[:texto_curto]).group(:imagem_file_name)
		@qtdFotos = Admin::Conteudo.where("texto_curto = ?",params[:texto_curto]).group(:titulo).empty?
		@menu = Admin::Menu.all
  end

end
