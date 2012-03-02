class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :address
      t.date :dob
      t.string :mobilenumber
      t.string :homenumber
      t.string :worknumber
      t.text :memo
      t.string :gender
      t.date :lastvisit

      t.timestamps
    end
  end
end
