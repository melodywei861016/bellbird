class Alarm < ApplicationRecord
  validates :name, :uniqueness => true

  before_save :nameValid

  acts_as_votable

  def nameValid
    name.upcase!
  end
end
