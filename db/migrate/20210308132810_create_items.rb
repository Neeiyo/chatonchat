class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    
        t.string :title, validate: true
        t.text :description, validate: true
        t.decimal :price, validate: true 
        t.string :image_url, validate: true

      t.timestamps
    end
  end
end
