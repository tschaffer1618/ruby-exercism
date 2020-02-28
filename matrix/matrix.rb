class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = rowify(string)
    @columns = columnify
  end

  def rowify(string)
    string.split(/[\n]/).map do |substring|
      substring.split.map(&:to_i)
    end
  end

  def columnify
    total_columns = @rows[0].count
    i = 0
    final = []
    while i < total_columns do
      column = []
      @rows.each { |row| column << row[i] }
      final << column
      i += 1
    end
    final
  end
end

