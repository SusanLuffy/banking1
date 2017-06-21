class RenameColm < ActiveRecord::Migration
  def change
    rename_column :bankings, :Date, :date
    rename_column :bankings, :Title, :title
  end
end
