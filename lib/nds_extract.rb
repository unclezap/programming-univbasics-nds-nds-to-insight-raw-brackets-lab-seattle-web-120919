$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

result = {}
index_one = 0
  while index_one < nds.length do
    index_two = 0
    sum = 0
    while index_two < nds[index_one][:movies].length do
      sum += nds[index_one][:movies][index_two][:worldwide_gross]
      index_two +=1
    end
    result.push(nds[index_one] => sum)
  end
  
  return result
end
