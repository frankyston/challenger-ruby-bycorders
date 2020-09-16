require 'rails_helper'

RSpec.describe CnabTransaction, type: :model do
  context "CNAB Transaction Valid" do
    it { should validate_presence_of(:date_transaction) }
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:card_number) }
    it { should validate_presence_of(:hour_transaction) }
    it { should validate_presence_of(:stone_owner) }
    it { should validate_presence_of(:stone_name) }
  end
end
