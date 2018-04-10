class AddButtonLinkToCallToActionsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :call_to_actions, :page_link, :string
    add_column :call_to_actions, :button_link, :string
  end
end