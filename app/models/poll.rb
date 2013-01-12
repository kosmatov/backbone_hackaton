class Poll < ActiveRecord::Base
  attr_accessible :name

  has_many :items

  scope :sample, order('random()').limit(1)

  def votes_count
    self.items.sum(&:votes_count)
  end
end
