KEY = ENV['CLOCKWORK_KEY']
NUMBER = ARGV[0]

api = Clockwork::API.new(KEY)

loop do
  api.messages.build(to: NUMBER, content: "Bling").deliver
  sleep 60 * 60 * 24
end
