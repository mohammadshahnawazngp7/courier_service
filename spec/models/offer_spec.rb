# frozen_string_literal: true

# spec/models/offer_spec.rb
require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe Offer, type: :model do
  describe '#apply_discount' do
    let(:offer) { Offer.new(offer_code: 'OFR003', discount: 5) }

    it 'applies discount if package meets criteria' do
      package = double('Package', distance: 100, weight: 10)
      total_cost = 700

      discounted_cost = offer.apply_discount(total_cost, package)

      expected_discounted_cost = total_cost * (1 - offer.discount / 100.0)
      expected_total_cost = total_cost - (total_cost - expected_discounted_cost)

      expect(discounted_cost).to eq(expected_total_cost.round(2))
    end

    it 'does not apply discount if package does not meet criteria' do
      package = double('Package', distance: 300, weight: 200)
      total_cost = 700

      discounted_cost = offer.apply_discount(total_cost, package)

      expect(discounted_cost).to eq(total_cost)
    end
  end

  describe '#meets_criteria?' do
    let(:offer) { Offer.new(offer_code: 'OFR003') }

    it 'returns true if package meets criteria' do
      package = double('Package', distance: 100, weight: 10)

      expect(offer.meets_criteria?(package)).to be_truthy
    end

    it 'returns false if package does not meet criteria' do
      package = double('Package', distance: 300, weight: 200)

      expect(offer.meets_criteria?(package)).to be_falsey
    end
  end
end
# rubocop:enable Metrics/BlockLength
