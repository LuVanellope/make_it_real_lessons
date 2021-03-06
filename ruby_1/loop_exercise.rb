=begin
Task: Please create a 4 x 4 multiplication table using loops

Restrictions and expectations

1. You can use as many functions or variables you want
2. This is a common exercise so please, do not search for the answer in the internet
3. When you're done, try to do it a in different way
4. Do not use puts inside the build_table method
5. The output should look like this

  1 2 3 4 5
  2 4 6 8 10
  3 6 9 12 15
  4 8 12 16 20
  5 10 15 20 25

=end

class MultiplicationTable

  def build_table
    table = []
    for i in 1..4
      row = []
      for j in 1..4
        row[j-1] = i * j
      end
      table[i-1] = row
    end
    translate_table(table)
  end

  def translate_table(table)
    translated_table = []
    table.each do |row|
      translated_table << row.join(" ")
    end
    translated_table
  end
end

puts MultiplicationTable.new.build_table
