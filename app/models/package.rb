# frozen_string_literal: true

# Represents a package in the application.
class Package < ApplicationRecord
  BASE_DELIVERY_COST = 100

  def meets_criteria?(offer)
    (offer.min_distance..offer.max_distance).include?(distance) && (offer.min_weight..offer.max_weight).include?(weight)
  end

  def delivery_cost
    total_cost = BASE_DELIVERY_COST + (weight * 10) + (distance * 5)
    total_cost.round(2) # Ensure the total cost is rounded to two decimal places
  end
end
