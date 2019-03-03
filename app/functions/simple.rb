require 'json'

def lambda_handler(event:, context:)
  puts "event: #{JSON.dump(event)}"
  puts "hello world"
  {foo: "bar"}
end
