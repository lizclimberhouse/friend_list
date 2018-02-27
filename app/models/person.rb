class Person < ApplicationRecord

  validates :friend_level, numericality: { less_than_or_equal_to: 10, greater_than_or_equal_to: 1 }
  validates :name, :age, :friend_level, presence: true

  # var @friend_level = Person.friend_level
  # def met(@friend_level)
  # var @rate
  #   if (@friend_level > 6)
  #     @rate = "very close"
  
  #   else
  #     @rate = "close"
  #   end

  # end
end
