require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "booking_manager"
require_relative "booking_manager"

# Seed data (like a mini database)
users = [
  User.new(id: 1, name: "Osama", role: "student"),
  User.new(id: 2, name: "Ali", role: "assistant")
]

resources = [
  Resource.new(id: 1, name: "Microscope", category: "lab"),
  Resource.new(id: 2, name: "Laptop", category: "device")
]

manager = BookingManager.new

def list_users(users)
  puts "\nUsers:"
  users.each_with_index do |u, i|
    puts "#{i}. #{u.name} (#{u.role})"
  end
end

def list_resources(resources)
  puts "\nResources:"
  resources.each_with_index do |r, i|
    status = r.available? ? "Available" : "Booked"
    puts "#{i}. #{r.name} (#{status})"
  end
end

def list_bookings(bookings)
  puts "\nBookings:"
  bookings.each_with_index do |b, i|
    puts "#{i}. #{b.user.name} -> #{b.resource.name} (#{b.status})"
  end
end

# CLI LOOP
loop do
  puts "\n=== LAB BOOKING SYSTEM ==="
  puts "1. Book Resource"
  puts "2. Cancel Booking"
  puts "3. View Active Bookings"
  puts "4. View All Resources"
  puts "5. Exit"
  print "Choose: "

  choice = gets.chomp

  case choice
  when "1"
    list_users(users)
    print "Select user index: "
    user_index = gets.chomp.to_i

    list_resources(resources)
    print "Select resource index: "
    resource_index = gets.chomp.to_i

    begin
      booking = manager.create_booking(
        user: users[user_index],
        resource: resources[resource_index]
      )
      puts "✅ Booking successful!"
    rescue => e
      puts "❌ Error: #{e.message}"
    end

  when "2"
    list_bookings(manager.all)
    print "Select booking index to cancel: "
    index = gets.chomp.to_i

    begin
      manager.cancel_booking(index)
      puts "✅ Booking cancelled!"
    rescue => e
      puts "❌ Error: #{e.message}"
    end

  when "3"
    list_bookings(manager.list_active)

  when "4"
    list_resources(resources)

  when "5"
    puts "Goodbye 👋"
    break

  else
    puts "Invalid choice 😑"
  end
end