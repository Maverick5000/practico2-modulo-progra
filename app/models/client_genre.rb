class ClientGenre < ApplicationRecord
  belongs_to :client
  belongs_to :genre
end
