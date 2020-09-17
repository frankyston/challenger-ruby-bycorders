require 'rails_helper'

RSpec.describe ImportCnabTransaction do

  describe "#execute" do
    it "should success import" do
      # sucesso
      path = Rails.root.join('spec', 'fixtures', 'cnab.txt')
      import_cnab_transaction = ImportCnabTransaction.new(path)

      import_cnab_transaction.execute
      expect(import_cnab_transaction.errors.count).to eq(0)
      expect(CnabTransaction.count).to eq(21)
    end
  end
end
