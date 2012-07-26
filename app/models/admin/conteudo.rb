# -*- encoding : utf-8 -*-
class Admin::Conteudo < ActiveRecord::Base
  attr_accessible :iframe, :link, :menu, :texto_curto, :texto_longo, :titulo, :localizacao, :imagem,:translations_attributes, :imagem_file_name,:imagem_content_type,:imagem_file_size, :imagem_updated_at
  validates_presence_of :menu, :titulo
  has_attached_file :imagem ,
                     :default_url => "images/missing.jpg",
                     :default_style => :medium,   
                    :styles => { :medium => "108x88>", :thumb => "100x100>" }
                    
  #has_attached_file :imagem , :styles => { :medium => "108x88>" }
  translates :titulo, :texto_curto, :texto_longo
  accepts_nested_attributes_for :translations
  class Translation
    attr_accessible :locale, :translations_attributes, :titulo, :texto_curto, :texto_longo
  end

	scope :acontece, where({:menu => 'Prêmios & Certificações'})  
	scope :nosso_produto_imagens, where({:menu => 'Nosso Produto', :localizacao => 'fotos'})
	scope :nosso_produto_videos, where({:menu => 'Nosso Produto', :localizacao => 'videos'})   
  
  def self.search(search)
    if search
      where('texto_curto LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
