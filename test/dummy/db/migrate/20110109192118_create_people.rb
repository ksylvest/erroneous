class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
