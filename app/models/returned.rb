class Returned < ApplicationRecord
  belongs_to :tape
  belongs_to :client
  after_create :handle_return
  after_create :notify

  def handle_return
    tape = Tape.find(self.tape_id)
    tape.available = true
    tape.save()
  end

  def notify
    @waitlist = Waitlist.where(tape_id: self.tape_id).first
    if @waitlist
      WaitlistMailer.with(client: @waitlist.client, tape: @waitlist.tape).notify.deliver_now
    end
    @waitlist.destroy
  end
end
