class RenameColums < ActiveRecord::Migration
  def change
    # rename_column :bankings, :Date, :date
    # rename_column :bankings, :Title, :title
    rename_column :bankings, :Amount, :amount
  end
end
