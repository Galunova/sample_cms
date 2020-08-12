class Page < ApplicationRecord
	belongs_to :index_template, class_name: 'Template', optional: true
	belongs_to :show_template, class_name: 'Template', optional: true
end
