class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :from
      t.references :article, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end
