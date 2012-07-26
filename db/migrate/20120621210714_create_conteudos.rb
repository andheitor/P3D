# -*- encoding : utf-8 -*-
class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :menu
      t.string :pagina
      t.string :titulo
      t.string :textoCurto
      t.string :textoLongo
      t.string :link
      t.string :iframe

      t.timestamps
    end
  end
end
