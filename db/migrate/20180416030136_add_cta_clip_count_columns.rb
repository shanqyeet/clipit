class AddCtaClipCountColumns < ActiveRecord::Migration[5.1]
  def change
  		add_column :call_to_actions, :count, :integer, default: 0
  		add_column :clips, :count, :integer, default: 0
  end
end
