# -*- encoding : utf-8 -*-
class ContatoController < ApplicationController
  def index
	@menu = Admin::Menu.all    
  end
end
