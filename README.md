# RUBY DEMO

Demonstration of using Cucumber, Ruby and the Watir gem (a library that sits on top of the Selenium Ruby bindings) to fill in a web form with data procured from the Star Wars API and a puzzle class.

The form_data.yml file holds all data for the test in one place including default data for the web form and also the arrays for the puzzle class. 

The DataMagic gem has the ability to pull in data from the yml file and provide pseudo-random data for the form fields as well - this ability is enabled by using the tilde ~ character before the data variable required.

Using the PageObject gem and the DataMagic gem together enables the entry of the web form to be accomplished by a single abstraction pulling in default data and merging with procured data before populating the web form:

```
populate_page_with data_for(:default_form, hash_to_merge)
```

This demo uses the following main gems:

```
Cucumber    - Behaviour Driven Development (BDD)
Watir       - Selenium Library
PageObject  - Easy Page Objects
DataMagic.  - Provides easy access to test data
HTTParty    - Get API response
```
