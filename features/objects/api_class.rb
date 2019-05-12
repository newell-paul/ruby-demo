# class to return first_name and last_name from rest api
class ApiClass
  def jedi_name
    response = HTTParty.get('https://swapi.co/api/people/1')
    full_name = response.parsed_response['name']
    full_name.split
  end
end
