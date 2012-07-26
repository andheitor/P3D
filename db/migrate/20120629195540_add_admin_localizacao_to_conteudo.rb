# -*- encoding : utf-8 -*-
class AddAdminLocalizacaoToConteudo < ActiveRecord::Migration
  def change
    add_column :admin_conteudos, :localizacao, :string
  end
end
