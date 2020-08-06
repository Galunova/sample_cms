class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
    	t.string :title
    	t.text :content
    	t.boolean :default, :default => false

      t.timestamps
    end
  end
end
