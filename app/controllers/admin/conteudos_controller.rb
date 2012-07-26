# -*- encoding : utf-8 -*-
class Admin::ConteudosController < ApplicationController
  

  
  def index
    @admin_conteudos = Admin::Conteudo.all
    render :layout => 'interna'
  end

  def show
    @admin_conteudo = Admin::Conteudo.find(params[:id])
    render :layout => 'interna'
  end

  def new
    @admin_conteudo = Admin::Conteudo.new
    render :layout => 'interna'
  end

  def edit
    @admin_conteudo = Admin::Conteudo.find(params[:id])
    render :layout => 'interna'
  end

  def create
    @admin_conteudo = Admin::Conteudo.new(params[:admin_conteudo])
    respond_to do |format|
      if @admin_conteudo.save
        format.html { redirect_to @admin_conteudo, :notice => 'Conteúdo criado com sucesso', :layout => 'interna' }      
      else
        format.html { render :action => "new" , :layout => 'interna' }
      end
    end
  end

  def update
    @admin_conteudo = Admin::Conteudo.find(params[:id])
    respond_to do |format|
      if @admin_conteudo.update_attributes(params[:admin_conteudo])
        format.html { redirect_to @admin_conteudo, :notice => 'Conteúdo atualizado com sucesso', :layout => 'interna'  }
      else
        format.html { render :action => "edit", :layout => 'interna' }
      end
    end
  end

  def destroy
    @admin_conteudo = Admin::Conteudo.find(params[:id])
    @admin_conteudo.destroy
    respond_to do |format|
      format.html { redirect_to admin_conteudos_url }
    end
  end

end

