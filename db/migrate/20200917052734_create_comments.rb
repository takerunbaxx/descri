class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :port, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.text :content
      t.text :request

      t.timestamps
    end
  end
end
