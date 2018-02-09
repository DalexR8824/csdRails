class CreateJoinTableAgentJob < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :agents, :jobs do |t| 
  		t.index [:agent_id, :job_id] # t.index [:job_id, :agent_id]
  	end
  end
end
