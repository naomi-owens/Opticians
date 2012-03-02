class CreateOpticians < ActiveRecord::Migration
  def change
    create_table :opticians do |t|
      t.string :firstname
      t.string :lastname
      t.string :roomnumber
      t.string :opticianregistrationnumber
      t.string :phonenumber
      t.string :email

      t.timestamps
    end
  end
end
