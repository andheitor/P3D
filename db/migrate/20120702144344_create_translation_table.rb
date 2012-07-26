# -*- encoding : utf-8 -*-
class CreateTranslationTable < ActiveRecord::Migration
  def self.up
    Admin::Conteudo.create_translation_table! :titulo => :string, :texto_curto => :string, :texto_longo => :text     
  end

  def down
  end
end
