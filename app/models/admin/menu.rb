# -*- encoding : utf-8 -*-
class Admin::Menu < ActiveRecord::Base
  attr_accessible :menu, :translations_attributes
  validates_presence_of :menu
  translates :menu
  accepts_nested_attributes_for :translations
  class Translation
    attr_accessible :locale, :translations_attributes, :menu
  end

end
