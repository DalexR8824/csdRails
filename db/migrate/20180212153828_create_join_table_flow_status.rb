class CreateJoinTableFlowStatus < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :flows, :statuses do |t| 
  		t.index [:flow_id, :status_id] # t.index [:flow_id, :status_id]
  	end
  end
end
