# -*- encoding : utf-8 -*-
class Admin::User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :login, :password, :password_confirmation
  attr_accessible :login, :password_digest, :password, :password_confirmation
end
