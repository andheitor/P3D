# -*- encoding : utf-8 -*-
class AddImagemToConteudos < ActiveRecord::Migration
  def up 
    change_table :conteudos do |t|
        t.has_attached_file :imagem  
    end 
    
  end
end
