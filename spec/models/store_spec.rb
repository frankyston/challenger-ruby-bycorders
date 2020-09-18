require 'rails_helper'

RSpec.describe Store, type: :model do
  context "Store Valid" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:owner_name) }
  end
end
