class ChangeTypeToInteractions < ActiveRecord::Migration[6.1]
  def change
      change_column :interactions, :liked, :boolean, null: false, default: false
      change_column :interactions, :has_read, :boolean, null: false, default: false
      change_column :interactions, :read_later, :boolean, null: false, default: false
  end
end
