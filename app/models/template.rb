class Template < ApplicationRecord
	has_many :index_pages, class_name: 'Page', foreign_key: 'index_template_id'
  has_many :show_pages, class_name: 'Page', foreign_key: 'show_template_id'
end
