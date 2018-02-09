class CreateJoinTableAgentUser < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :agents, :users do |t| 
  		t.index [:agent_id, :user_id] # t.index [:user_id, :agent_id]
  	end
  end
end
