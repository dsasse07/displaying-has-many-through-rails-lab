class AddDetailsToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :name, :string
    add_column :patients, :age, :integer
  end
end
