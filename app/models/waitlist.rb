class Waitlist < ApplicationRecord
  belongs_to :tape
  belongs_to :client
end
