# Grumpy Automation

Simple automation framework for [Grumpy Cat Sightings](https://grumpy-cat-tracker.herokuapp.com)

# Setup and run

1. Clone the repository
2. Using terminal or command line, cd into the root directory (Grumpy-Automation)
3. Assign the three ENV variables like so:
..* SITE=gct BROWSER=firefox ENVIRONMENT=prod
4. call the rspec test like so:
..* rspec lib/spec/tests/grumpy_cat_tests/<test>.rb

# Example

SITE=gct BROWSER=firefox ENVIRONMENT=prod rspec lib/spec/tests/grumpy_cat_tests/add_sightings_spec.rb