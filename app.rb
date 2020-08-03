require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end


    post '/pirates' do
      params[:pirate][:ships].each do |ship_data|
        Ship.new(ship_data[:name], ship_data[:type], ship_data[:booty])
      end

      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])

      @ships = Ship.all

      erb :pirates/show
    end

    get '/new' do
      erb :pirates/new
    end

  end
end
