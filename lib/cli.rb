# frozen_string_literal: true

# you've limited to :test, :development, or :production.
class CLI
  def initialize
    @package = Package.new
  end

  # rubocop:disable Metrics/AbcSize
  def run
    puts 'Welcome to the Delivery Cost Estimation Tool!'
    puts 'Please provide the following details:'

    print 'Enter package weight (kg): '
    @package.weight = gets.chomp.to_f

    print 'Enter distance to destination (km): '
    @package.distance = gets.chomp.to_f

    print 'Enter offer code (if applicable): '
    @package.offer_code = gets.chomp

    estimated_cost = calculate_delivery_cost
    puts "Estimated Delivery Cost: $#{estimated_cost}"
  end
  # rubocop:enable Metrics/AbcSize

  private

  # rubocop:disable Metrics/MethodLength
  def calculate_delivery_cost
    base_cost = 100 # Set your base delivery cost here
    weight_cost = @package.weight * 10
    distance_cost = @package.distance * 5
    total_cost = base_cost + weight_cost + distance_cost

    if @package.offer_code.present?
      offer = Offer.find_by(offer_code: @package.offer_code)
      if offer&.meets_criteria?(@package)
        discount_amount = (offer.discount / 100.0) * total_cost
        total_cost -= discount_amount # Subtract the discount amount from the total cost
      end
    end

    total_cost.round(2)
  end
  # rubocop:enable Metrics/MethodLength
end
