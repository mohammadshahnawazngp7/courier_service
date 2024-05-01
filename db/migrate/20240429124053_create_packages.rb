# frozen_string_literal: true

# you've limited to :test, :development, or :production.
class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :package_id
      t.decimal :weight
      t.decimal :distance
      t.string :offer_code

      t.timestamps
    end
  end
end
