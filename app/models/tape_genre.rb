class TapeGenre < ApplicationRecord
  belongs_to :tape
  belongs_to :genre
end
