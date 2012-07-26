# -*- encoding : utf-8 -*-
class CreateTranslateTableMenu < ActiveRecord::Migration
  def self.up
    Admin::Menu.create_translation_table! :menu => :string
  end

  def down
  end
end
