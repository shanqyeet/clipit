class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.json :logo
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
