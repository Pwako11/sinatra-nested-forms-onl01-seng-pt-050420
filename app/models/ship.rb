class Ship

  attr_reader :name, :type, :body

  @@all = []

  def initialize(params)
   @name = params[:name]
   @type = params[:type]
   @body = params[:body]
   @@all << self
  end

  def self.all
   @@all
  end

  def self.clear

    @ll.clear

  end

end
