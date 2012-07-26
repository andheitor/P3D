# -*- encoding : utf-8 -*-
class Admin::UsersController < ApplicationController
  # GET /admin/users
  # GET /admin/users.json
  def index
    @admin_users = Admin::User.all
    render :layout => 'interna'
  end

  # GET /admin/users/1
  # GET /admin/users/1.json
  def show
    @admin_user = Admin::User.find(params[:id])
    render :layout => 'interna'
  end

  # GET /admin/users/new
  # GET /admin/users/new.json
  def new
    @admin_user = Admin::User.new
    render :layout => 'interna'
  end

  # GET /admin/users/1/edit
  def edit
    @admin_user = Admin::User.find(params[:id])
    render :layout => 'interna'
  end

  # POST /admin/users
  # POST /admin/users.json
  def create
    @admin_user = Admin::User.new(params[:admin_user])

    respond_to do |format|
      if @admin_user.save
        format.html { redirect_to @admin_user, :notice => 'Usuario criado com sucesso!.',  :layout => 'interna'}
        format.json { render :json => @admin_user, :status => :created, :location => @admin_user }
      else
        format.html { render :action => "new",  :layout => 'interna' }
        format.json { render :json => @admin_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/users/1
  # PUT /admin/users/1.json
  def update
    @admin_user = Admin::User.find(params[:id])

    respond_to do |format|
      if @admin_user.update_attributes(params[:admin_user])
        format.html { redirect_to @admin_user, :notice => 'Usuário alterado com sucesso!', :layout => 'interna' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit", :layout => 'interna'}
        format.json { render :json => @admin_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/users/1
  # DELETE /admin/users/1.json
  def destroy
    @admin_user = Admin::User.find(params[:id])
    @admin_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_users_url }
      format.json { head :no_content }
    end
  end
end
