$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
<<<<<<< HEAD
require 'pry'

def directors_totals(nds)
  director_index = 0
 
=======

def directors_totals(nds)
  director_index = 0
  movie_index = 0
>>>>>>> bbde89a3ef293853f6c92a6bb282726ddecc28dc
  result = {
   }

while director_index < nds.length
<<<<<<< HEAD
 movie_index = 0
director_name = nds[director_index][:name] 
result[director_name] = 0
 while movie_index < nds[director_index][:movies].length
 ##binding.pry
  result[director_name] +=  nds[director_index][:movies][movie_index][:worldwide_gross]
=======
result[nds[director_index][:name]] = 0
 while movie_index < nds[director_index][:movies].length
  result[nds[director_index][:name]] +=  nds[director_index][:movies][movie_index][:worldwide_gross]
>>>>>>> bbde89a3ef293853f6c92a6bb282726ddecc28dc
  movie_index += 1
end
director_index += 1
end


  return result
end

directors_totals(directors_database)
