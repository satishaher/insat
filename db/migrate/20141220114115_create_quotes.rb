class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :maintext
      t.string :by
      t.float :rating
      t.references :user

      t.timestamps
    end
  end
end
