# Grumpy Automation

Simple automation framework for [Grumpy Cat Sightings](https://grumpy-cat-tracker.herokuapp.com)

# Setup and run

1. Clone the repository
2. Using terminal or command line, cd into the root directory (Grumpy-Automation)
3. Assign the three ENV variables like so:  SITE=gct BROWSER=firefox ENVIRONMENT=prod
4. call the rspec test like so:  rspec lib/spec/tests/grumpy_cat_tests/<test>.rb

## Example

SITE=gct BROWSER=firefox ENVIRONMENT=prod rspec lib/spec/tests/grumpy_cat_tests/add_sightings_spec.rb


# Installing Ruby for Windows

1. http://rubyinstaller.org/
2. click download
3. ruby 2.1.7 link
4. launch installer
5. select all three checkboxes, finish install
6. Download DevKit 2.0 and above for appropriate architecture
7. Extract files to custome folder on desktop
8. Cd to it, run ruby dk.rb init and ruby dk.rb install to bind it to ruby installations in your path
9. Navigate to https://github.com/JMoxx/Grumpy-Automation
10. Download ZIP file and create a new folder