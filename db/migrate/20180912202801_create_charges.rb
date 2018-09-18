class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :name
      t.string :amount_payable
      t.string :no_of_persons

      t.timestamps
    end
  end
end
