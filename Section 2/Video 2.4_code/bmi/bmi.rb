require 'sinatra'
require 'sinatra/json'

set :bind, '0.0.0.0'
set :port, 80

# weight in kilograms, height in centimeters
def calculate_bmi(weight, height)
  return (weight / (height / 100) ** 2).round(2)
end

get '/api/bmi' do
  content_type :json
  weight = params['weight'].to_f
  height = params['height'].to_f
  bmi = { 'bmi' => calculate_bmi(weight, height) }
  json bmi
end
