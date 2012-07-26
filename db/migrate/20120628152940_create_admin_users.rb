# -*- encoding : utf-8 -*-
class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :login
      t.string :password_digest

      t.timestamps
    end
  end
end
