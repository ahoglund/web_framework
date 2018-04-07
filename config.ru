require_relative "./app"

APP = App.new do
  get "/" do
    "hello, world"
  end
end

run APP
