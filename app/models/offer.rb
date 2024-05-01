# frozen_string_literal: true

# Represents an offer in the application.
class Offer < ApplicationRecord
  def apply_discount(total_cost, package)
    if meets_criteria?(package)
      discount_amount = (discount / 100.0) * total_cost
      total_cost -= discount_amount
    end
    total_cost.round(2)
  end

  def meets_criteria?(package)
    case offer_code
    when 'OFR001'
      package.distance < 200 && (70..200).include?(package.weight)
    when 'OFR002'
      (50..150).include?(package.distance) && (100..250).include?(package.weight)
    when 'OFR003'
      (50..250).include?(package.distance) && (10..150).include?(package.weight)
    else
      false
    end
  end
end
