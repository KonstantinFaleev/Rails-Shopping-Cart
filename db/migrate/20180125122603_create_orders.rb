class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :comment
      t.string :phone
      t.string :pay_method

      t.timestamps
    end
  end
end
