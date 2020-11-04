class Client < ApplicationRecord
    has_many :client_genres, :dependent => :destroy
    has_many :client_directors, :dependent => :destroy
    has_many :client_actors, :dependent => :destroy
    has_many :genres, through: :client_genres
    has_many :directors, through: :client_directors
    has_many :actors, through: :client_actors
    has_many :renteds

    before_create :generate_code

    def generate_code
       self.code = SecureRandom.hex(10)
    end
end
