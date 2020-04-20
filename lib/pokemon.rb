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
    database.execute("SELECT * FROM pokemon WHERE id = ? ", id)


  end
end
