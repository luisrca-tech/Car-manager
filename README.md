# Car Management System

A simple Ruby on Rails application for managing a car inventory. This system allows you to track cars, their status (for sale or sold), and view different car listings.

## Features

- Create new cars with details (model, year, color, status)
- View all cars in the inventory
- Filter cars by their selling status
- Modern and responsive user interface
- Form validation and error handling

## Technical Stack

- Ruby on Rails 8.0.2
- SQLite (default database)
- Turbo Rails for enhanced interactivity
- Stimulus.js for JavaScript interactions

## Prerequisites

- Ruby 3.2.2 or higher
- Rails 8.0.2
- SQLite3

## Setup Instructions

1. Clone the repository:
```bash
git clone <repository-url>
cd projeto_mvc
```

2. Install dependencies:
```bash
bundle install
```

3. Set up the database:
```bash
rails db:create
rails db:migrate
```

4. Start the Rails server:
```bash
rails server
```

5. Visit `http://localhost:3000` in your browser

## Database Structure

The application uses a single `cars` table with the following columns:
- `model` (string)
- `year` (integer)
- `color` (string)
- `is_selling` (boolean)
- `created_at` (datetime)
- `updated_at` (datetime)

## Usage

1. **View Cars**
   - Visit the home page to see all cars
   - Cars are displayed in a grid layout
   - Separate sections for all cars and cars for sale

2. **Add New Car**
   - Click "Adicionar Novo Carro" button
   - Fill in the car details:
     - Model
     - Year
     - Color
     - Status (A venda/Vendido)
   - Click "Salvar" to create the car

3. **Database Access**
   - Use Rails console to interact with the database:
   ```bash
   rails console
   ```
   - Common commands:
     ```ruby
     Car.all                    # View all cars
     Car.column_names          # View table columns
     Car.where(is_selling: true) # View cars for sale
     ```

## Development

- The application follows the MVC (Model-View-Controller) pattern
- Views are styled with custom CSS for a modern look
- Form validation ensures data integrity
- Error messages are displayed in a user-friendly format

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
