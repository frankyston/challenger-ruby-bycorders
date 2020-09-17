class CnabTransaction < ApplicationRecord
  attr_accessor :file
  enum type_transaction: { debit: 1, billet: 2, financing: 3, credit: 4, loan_receipt: 5, sales: 6, ted_receipt: 7, doc_receipt: 8, rent: 9 }
  validates :type_transaction, :date_transaction, :value, :cpf, :card_number, :hour_transaction, :stone_owner, :stone_name, presence: true
end
