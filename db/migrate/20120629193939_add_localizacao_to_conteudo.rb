# -*- encoding : utf-8 -*-
class AddLocalizacaoToConteudo < ActiveRecord::Migration
  def change
    add_column :conteudos, :localizacao, :string
  end
end
