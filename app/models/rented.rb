class Rented < ApplicationRecord
  belongs_to :tape
  belongs_to :client
  after_create :handle_rent

  def handle_rent
    tape = Tape.find(self.tape_id)
    tape.available = false
    tape.save()
  end
  
end
