Given(/^I am on the seleniumhq test form$/) do
  DataMagic.yml_directory = 'features/config/data'
  DataMagic.load 'form_data.yml'

  visit_page FormPage
  @browser.window.maximize
end

When(/^I get the first character in Star Wars api$/) do
  rest = ApiClass.new
  @first_name, @last_name = rest.jedi_name
end

And(/^I complete the demo form with required data and outlier inputs$/) do
  puzzle = PuzzleClass.new
  @outliers = puzzle.outliers

  hash_to_merge = { first_name:  @first_name,
                    last_name:   @last_name,
                    website:     @browser.url,
                    description: @outliers }

  on FormPage do |page|
    page.fill_form(hash_to_merge)
  end
end

Then(/^submitting the form results in a "(.*)" message$/) do |message|
  on FormPage do |page|
    page.submit
    expect(page.validation_message_element.h2.text).to match(message)
  end
end
