class Ship

  attr_reader :name, :type, :body

  @@all = []

  def initialize(params)
   @name = params[:name]
   @type = params[:type]
   @booty = params[:booty]
   @@all << self
  end

  def self.all
   @@all
  end

  def clear
    @ll.clear
  end

end
