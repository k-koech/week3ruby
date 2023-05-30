class ChangeUsernameDatatype < ActiveRecord::Migration[6.1]
        def change
          change_column :users, :test, :boolean
        end
end