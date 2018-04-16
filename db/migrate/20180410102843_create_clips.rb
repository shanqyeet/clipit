class CreateClips < ActiveRecord::Migration[5.1]
  def change
    create_table :clips do |t|
    	t.belongs_to :call_to_action 
    	t.belongs_to :user 
    	t.string :page_link 
    	t.string :short_link 
      	t.timestamps
    end
  end
end
