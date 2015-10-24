require 'clockwork'

api = Clockwork::API.new(ENV['CLOCKWORK_KEY'])

loop do
  api.messages.build(to: ARGV.first, content: "Bling").deliver
  sleep 60 * 60 * 24
end
