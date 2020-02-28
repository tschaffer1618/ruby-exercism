class ResistorColorDuo
  def self.value(arr)
    value_hash = {"black" => "0",
                  "brown" => "1",
                  "red" => "2",
                  "orange" => "3",
                  "yellow" => "4",
                  "green" => "5",
                  "blue" => "6",
                  "violet" => "7",
                  "grey" => "8",
                  "white" => "9"}
    (value_hash[arr[0]] + value_hash[arr[1]]).to_i
  end
end

