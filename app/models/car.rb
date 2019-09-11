class Car < ApplicationRecord
  validates :make, uniqueness: true, presence: true

  # return all cars asc order by model
  def self.by_model
  end

  # return all cars asc by make
  def self.by_make
  end

  # no params pass return all cars by mileage
  def self.by_mileage(direction = :asc)
  end

  # change the color of the car with param
  def paint(color)
  end

  # return hash of all car info
  def info
  end

  # return a string of the car horn
  def honk
  end

end
