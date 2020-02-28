class Series
  def initialize(string)
    @string = string
  end

  def slices(size)
    arr = @string.split("")
    raise ArgumentError if arr.count < size
    final = []
    arr.each_cons(size) do |mini_arr|
      final << mini_arr.join
    end
    final
  end
end

