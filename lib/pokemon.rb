require 'pry'

class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(name:, type:, id: nil, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, database)
    database.execute("INSERT INTO pokemon(name, type) VALUES(?, ?)", name, type)
  end

  def self.find(pokemon_id, database)
    array = database.execute("SELECT * FROM pokemon WHERE id = ? ", id)
    binding.pry
    pokemon = Pokemon.new()
  end
end
