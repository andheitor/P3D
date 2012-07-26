# -*- encoding : utf-8 -*-
class AddImagemToAdminConteudos < ActiveRecord::Migration
def up 
    change_table :admin_conteudos do |t|
        t.has_attached_file :imagem  
    end 
 end   
end
