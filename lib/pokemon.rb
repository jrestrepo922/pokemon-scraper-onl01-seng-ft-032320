class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(name:, type:, id: nil, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end


end
