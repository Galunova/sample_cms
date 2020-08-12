class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
    	t.string :slug, null: false, default: ""
    	t.text :content
		t.references :index_template
		t.references :show_template

      t.timestamps
    end
  end
end
