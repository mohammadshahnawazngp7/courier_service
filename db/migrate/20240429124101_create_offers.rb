# frozen_string_literal: true

# you've limited to :test, :development, or :production.
class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :offer_code
      t.decimal :discount
      t.decimal :min_distance
      t.decimal :max_distance
      t.decimal :min_weight
      t.decimal :max_weight

      t.timestamps
    end
  end
end
