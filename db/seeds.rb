# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Offer.create(offer_code: 'OFR001', discount: 10, min_distance: 50, max_distance: 150, min_weight: 100, max_weight: 250)
Offer.create(offer_code: 'OFR002', discount: 15, min_distance: 50, max_distance: 250, min_weight: 10, max_weight: 150)
Offer.create(offer_code: 'OFR003', discount: 5, min_distance: 0, max_distance: 200, min_weight: 70, max_weight: 200)
