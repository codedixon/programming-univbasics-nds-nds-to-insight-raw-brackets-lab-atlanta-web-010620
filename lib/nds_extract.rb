$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  director_index = 0
 
  result = {
   }

while director_index < nds.length
 movie_index = 0
director_name = nds[director_index][:name] 
result[director_name] = 0
 while movie_index < nds[director_index][:movies].length
 ##binding.pry
  result[director_name] +=  nds[director_index][:movies][movie_index][:worldwide_gross]
  movie_index += 1
end
director_index += 1
end


  return result
end

directors_totals(directors_database)
