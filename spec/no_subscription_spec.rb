require "spec_helper"

describe NoSubscription do
  describe '#price' do
    it 'returns 0' do
      price = 0
      no_subscription = NoSubscription.new

      expect(no_subscription.price).to eq(price)
    end
  end

  describe "#charge" do
    it "does not charge the credit card" do
      credit_card = double(credit_card)
      allow(credit_card).to receive(:charge)
      no_subscription = NoSubscription.new

      no_subscription.charge(credit_card)

      expect(credit_card).not_to have_received(:charge)
    end
  end

  describe "#plan_name" do
    it "Does not have a plan" do
      expect(NoSubscription.new.plan_name).to eq("No Plan")
    end
  end

  describe "#has_mentoring?" do
    it "does not have mentoring" do
      expect(NoSubscription.new.has_mentoring?).to be false
    end
  end
end
