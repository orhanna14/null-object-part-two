class NoSubscription

  def charge(credit_card)
    false
  end

  def price
    0
  end

  def plan_name
    "No Plan"
  end

  def has_mentoring?
    false
  end
end
