# -*- encoding : utf-8 -*-
class CreateAdminMenu < ActiveRecord::Migration
  def change
	  	create_table :admin_menu do |t|
  			t.string :menu
  		end
  end
end
