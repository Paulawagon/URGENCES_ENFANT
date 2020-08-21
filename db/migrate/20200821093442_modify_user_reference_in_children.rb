class ModifyUserReferenceInChildren < ActiveRecord::Migration[6.0]
  def change
    remove_reference :children, :user 
    add_reference :children, :user, null: true
  end
end
