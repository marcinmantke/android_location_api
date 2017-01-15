class AddLocation < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string   :lat, null: false
      t.string   :lng, null: false
      t.timestamps
      t.references   :user
    end
  end
end
