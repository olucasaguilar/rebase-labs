require 'sinatra'
require_relative 'app/models/medical_record.rb'

get '/tests' do
  content_type :json
  response.headers['Access-Control-Allow-Origin'] = '*'
  records = MedicalRecord.all
  records.to_json
end

get '/' do
  content_type :html
  File.open('app/views/index.html')
end