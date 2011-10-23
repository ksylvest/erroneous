class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
