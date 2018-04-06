class CreateCallToActions < ActiveRecord::Migration[5.1]
  def change
    create_table :call_to_actions do |t|
      t.belongs_to :user 
      t.belongs_to :brand 
      t.string :description
      t.string :button_text
      t.string :position
      t.string :bg_color
      t.string :bg_border_size
      t.string :bg_border_type
      t.string :bg_border_color
      t.string :bg_border_radius
      t.string :btn_color 
      t.string :btn_border_size 
      t.string :btn_border_type
      t.string :btn_border_color 
      t.string :btn_border_radius
      t.timestamps
    end
  end
end
