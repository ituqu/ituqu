class AddMoreToGroup < ActiveRecord::Migration
  def change
      change_table(:groups)  do |t| 
         t.string     :start  
         t.string     :destination
         t.integer    :limitition
         t.datetime   :when_to_go
         t.string     :link
         t.text       :remark
      end
        
        
  end
end
