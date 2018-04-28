class CreateCtaCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :cta_counts do |t|
      t.belongs_to :call_to_action, index: true
      t.belongs_to :clip, index: true 
      t.timestamps
    end
  end
end
