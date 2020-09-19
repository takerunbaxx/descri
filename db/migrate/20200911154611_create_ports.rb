class CreatePorts < ActiveRecord::Migration[6.0]
  def change
    create_table :ports do |t|
      t.string :name, null: false, default: "no-name"
      t.string :address, null: false, default: "no-address"
      t.text :information, null: false
      t.text :detail, null: false
      t.text :summary, null: false
      t.string :rep_name1, null: false, default: "no-spot-name"
      t.text :rep_info1, null: false
      t.string :rep_name2, null: false, default: "no-spot-name"
      t.text :rep_info2, null: false
      t.string :contact1, default: "no-contact(string)"
      t.integer :contact2, default: "no-contact(number)"

      t.timestamps
    end
  end
end
