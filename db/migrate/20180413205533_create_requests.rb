class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :bytes
      t.string :url
      t.string :domain
      t.string :email

      t.timestamps
    end
  end
end
