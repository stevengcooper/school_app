class AddDetailsToParents < ActiveRecord::Migration
  def change
    add_column :parents, :email, :string
    add_column :parents, :password_digest, :string
  end
end
