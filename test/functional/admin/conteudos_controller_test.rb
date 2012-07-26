# -*- encoding : utf-8 -*-
require 'test_helper'

class Admin::ConteudosControllerTest < ActionController::TestCase
  setup do
    @admin_conteudo = admin_conteudos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_conteudos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_conteudo" do
    assert_difference('Admin::Conteudo.count') do
      post :create, :admin_conteudo => { :iframe => @admin_conteudo.iframe, :link => @admin_conteudo.link, :menu => @admin_conteudo.menu, :texto_curto => @admin_conteudo.texto_curto, :texto_longo => @admin_conteudo.texto_longo, :titulo => @admin_conteudo.titulo }
    end

    assert_redirected_to admin_conteudo_path(assigns(:admin_conteudo))
  end

  test "should show admin_conteudo" do
    get :show, :id => @admin_conteudo
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_conteudo
    assert_response :success
  end

  test "should update admin_conteudo" do
    put :update, :id => @admin_conteudo, :admin_conteudo => { :iframe => @admin_conteudo.iframe, :link => @admin_conteudo.link, :menu => @admin_conteudo.menu, :texto_curto => @admin_conteudo.texto_curto, :texto_longo => @admin_conteudo.texto_longo, :titulo => @admin_conteudo.titulo }
    assert_redirected_to admin_conteudo_path(assigns(:admin_conteudo))
  end

  test "should destroy admin_conteudo" do
    assert_difference('Admin::Conteudo.count', -1) do
      delete :destroy, :id => @admin_conteudo
    end

    assert_redirected_to admin_conteudos_path
  end
end
