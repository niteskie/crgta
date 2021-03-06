class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title, :null => false
      t.text :content,  :null => false
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
