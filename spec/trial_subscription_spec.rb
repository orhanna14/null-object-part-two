require "spec_helper"

describe TrialSubscription do
  describe "#charge" do
    it "does not charge the credit card" do
      credit_card = double("credit card")
      trial_subscription = TrialSubscription.new

      expect(trial_subscription.charge(credit_card)).to be false
    end
  end
  describe "#plan_name" do
    it "Does not have a plan" do
      expect(TrialSubscription.new.plan_name).to eq("Free Trial")
    end
  end

  describe "#has_mentoring?" do
    it "does have mentoring" do
      expect(TrialSubscription.new.has_mentoring?).to be true
    end
  end

end
