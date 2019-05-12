require 'watir'
require 'rspec'
require 'page-object'
require 'data_magic'
require 'httparty'

Watir.logger.output = 'watir.log'

World PageObject::PageFactory

Before do
  @browser = Watir::Browser.new :chrome
end

After do
  @browser.quit if @browser
end
