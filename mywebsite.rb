require 'sinatra'

post '/' do
    status 200
    headers('Validation-Token' => request.env['HTTP_VALIDATION_TOKEN']) if request.env['HTTP_VALIDATION_TOKEN'] 
    body 'OK'
end
