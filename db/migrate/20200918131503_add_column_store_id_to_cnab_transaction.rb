class AddColumnStoreIdToCnabTransaction < ActiveRecord::Migration[6.0]
  def change
    add_reference :cnab_transactions, :store, null: false, foreign_key: true
  end
end
