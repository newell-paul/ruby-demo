# RUBY DEMO

Demonstration of using Cucumber, Ruby and the Watir gem (a library that sits on top of the Selenium Ruby bindings) to fill in a web form with data procured from Star Wars api and a puzzle class.

The form_data.yml file holds all data for the test in one place including default data for the web form and also the arrays for the puzzle class. 

The data magic gem has the ability to pull in data from the yml file and provide pseudo-random data for the form fields as well - this abilty is enabled by using the tilde ~ character before the data variable required.

This demo uses the following main gems:

```
Cucumber    - Behaviour Driven Development (BDD)
Watir       - Selenium Library
PageObject  - Easy Page Objects
DataMagic.  - Provides easy access to test data
HTTParty    - Get API response
```
