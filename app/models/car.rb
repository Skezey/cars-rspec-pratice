class Car < ApplicationRecord
  validates :make, uniqueness: true, presence: true

  # return all cars asc order by model
  def self.by_model
    order(:model)
  end

  # return all cars asc by make
  def self.by_make
    order(:make)
  end

  # no params pass return all cars by mileage
  def self.by_mileage(direction = :asc)
    order(mileage: direction)
  end

  # change the color of the car with param
  def paint(color)
    self.update(color: color)
  end

  # return hash of all car info
  def info
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  # return a string of the car horn
  def honk
    return 'Loud!!!'
  end

end
