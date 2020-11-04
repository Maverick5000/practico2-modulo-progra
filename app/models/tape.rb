class Tape < ApplicationRecord
  has_many :tape_genres, :dependent => :destroy
  has_many :tape_actors, :dependent => :destroy
  belongs_to :director
  has_many :actors, through: :tape_actors
  has_many :genres, through: :tape_genres

  before_create :generate_code

  def generate_code
      self.code = SecureRandom.hex(10)
  end
end
