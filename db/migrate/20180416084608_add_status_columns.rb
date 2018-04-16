class AddStatusColumns < ActiveRecord::Migration[5.1]
  def change
  	add_column :clips, :status, :integer, default: 0
  	add_column :call_to_actions, :status, :integer, default: 0
  end
end
