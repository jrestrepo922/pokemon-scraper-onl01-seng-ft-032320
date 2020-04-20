class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(name:, type:, id: nil, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save
    sql = <<-SQL
      INSERT INTO pokemon(name, type) VALUES(?, ?)
    SQL

    @db.execute(sql, self.name, self.type)

    @id = @db.execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end

end
