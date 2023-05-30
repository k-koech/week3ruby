class AddLocation < ActiveRecord::Migration[6.1]
    def change
      add_column :users, :test, :integer
    #   add_column :students, :birthdate, :string
    end
end