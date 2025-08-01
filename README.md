# Clone the Project
```
https://github.com/ravimehra123/string_calculator.git
```

# Setup Project

You need to run the bundle install on order to get this ruby project work in your local. Because it uses rspec for test coverage.

```
bundle install
```

# Specs
This project follows the TDD practices and has specs for multiple scenarios. 

## Running all specs
```
bundle exec rspec
```

# Running program

To run the program without specs you need to add following lines in it:
```ruby
string_calculator = StringCalculator.new
result = string_calculator.add('1,3')
puts result
```

And then save the `string_calculator.rb` class and run it in terminal:
```
ruby string_calculator.rb
```
