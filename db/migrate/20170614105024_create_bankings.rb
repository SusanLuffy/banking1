class CreateBankings < ActiveRecord::Migration
  def change
    create_table :bankings do |t|
      t.date :Date
      t.string :Title
      t.float :Amount
      t.timestamps null: false
    end
  end
  
end
