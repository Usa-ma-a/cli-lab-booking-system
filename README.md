# Lab Booking System

A simple command-line application for managing lab resource bookings built with Ruby.

## Description

The Lab Booking System allows users to book and manage lab resources such as microscopes, laptops, and other equipment. It supports different user roles (students and assistants) and provides a straightforward CLI interface for all operations.

## Features

- **User Management**: Support for students and lab assistants
- **Resource Management**: Track availability of lab equipment
- **Booking System**: Create, view, and cancel bookings
- **Validation**: Ensures resources are available and users have proper permissions
- **CLI Interface**: Easy-to-use command-line interface

## Installation

### Prerequisites

- Ruby (version 2.5 or higher)

### Setup

1. Clone or download the project files
2. Navigate to the project directory:
   ```bash
   cd lab-booking
   ```

## Usage

Run the application:

```bash
ruby app.rb
```

### Available Commands

1. **Book Resource**: Select a user and available resource to create a booking
2. **Cancel Booking**: Cancel an existing booking
3. **View Active Bookings**: Display all current active bookings
4. **View All Resources**: List all resources with their availability status
5. **Exit**: Quit the application

### Example Usage

```
=== LAB BOOKING SYSTEM ===
1. Book Resource
2. Cancel Booking
3. View Active Bookings
4. View All Resources
5. Exit
Choose: 1

Users:
0. Osama (student)
1. Ali (assistant)
Select user index: 0

Resources:
0. Microscope (Available)
1. Laptop (Available)
Select resource index: 0
✅ Booking successful!
```

## Project Structure

```
lab-booking/
├── app.rb              # Main CLI application
├── booking.rb          # Booking class
├── booking_manager.rb  # Manages all bookings
├── errors.rb           # Custom error classes
├── resource.rb         # Resource class
└── user.rb             # User class

test/
└── test_booking.rb     # Unit tests
```

## Classes

- **User**: Represents a user with ID, name, and role
- **Resource**: Represents a bookable resource with availability tracking
- **Booking**: Manages individual bookings with status tracking
- **BookingManager**: Handles creation, cancellation, and listing of bookings
- **BookingError**: Custom exception for booking-related errors

## Testing

The project includes unit tests using Minitest. To run the tests:

```bash
ruby test/test_booking.rb
```

### Test Coverage

- Booking creation with available resources
- Preventing double-booking of resources
- Booking cancellation
- Resource availability after cancellation

## Dependencies

- Ruby standard library (no external gems required for core functionality)
- Minitest (for testing)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Run the test suite
6. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Future Enhancements

- Persistent storage (database integration)
- Web interface
- User authentication
- Time-based bookings
- Resource categories and filtering
- Booking history and reporting