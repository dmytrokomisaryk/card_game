class Card < ApplicationRecord
  include ActiveModel::Serialization

  def self.get_card
    order('RANDOM()').first
  end

  def attributes
    {kind: kind, value: value}
  end
end
