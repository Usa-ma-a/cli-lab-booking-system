require_relative "booking"

class BookingManager
  def initialize
    @bookings = []
  end

  def create_booking(user:, resource:)
    booking = Booking.new(user: user, resource: resource)
    @bookings << booking
    booking
  end

  def cancel_booking(index)
    booking = @bookings[index]
    raise "Invalid booking index" unless booking

    booking.cancel
  end

  def list_active
    @bookings.select { |b| b.status == "active" }
  end

  def all
    @bookings
  end
end