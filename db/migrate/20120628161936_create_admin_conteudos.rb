# -*- encoding : utf-8 -*-
class CreateAdminConteudos < ActiveRecord::Migration
  def change
    create_table :admin_conteudos do |t|
      t.string :menu
      t.string :titulo
      t.string :texto_curto
      t.text :texto_longo
      t.string :link
      t.string :iframe

      t.timestamps
    end
  end
end
