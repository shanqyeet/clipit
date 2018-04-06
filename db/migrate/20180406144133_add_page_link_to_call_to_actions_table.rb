class AddPageLinkToCallToActionsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :call_to_actions, :page_link, :string
  end
end