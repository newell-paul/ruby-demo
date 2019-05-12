# page object class for form page
class FormPage
  include PageObject
  include DataMagic

  page_url('http://www.seleniumeasy.com/test/input-form-demo.html')

  text_field(:first_name, name: 'first_name')
  text_field(:last_name, name: 'last_name')
  text_field(:email, name: 'email')
  text_field(:phone, name: 'phone')
  text_field(:address, name: 'address')
  text_field(:city, name: 'city')
  text_field(:zip, name: 'zip')
  text_field(:website, name: 'website')
  text_area(:description, name: 'comment')
  select_list(:state, name: 'state')
  radio_button(:hosting, name: 'hosting', value: 'no')
  button(:submit, class: %w[btn btn-default])
  div(:validation_message, class: 'col-md-6 text-left')

  def fill_form(hash_to_merge, _data = {})
    populate_page_with data_for(:default_form, hash_to_merge)
  end
end
