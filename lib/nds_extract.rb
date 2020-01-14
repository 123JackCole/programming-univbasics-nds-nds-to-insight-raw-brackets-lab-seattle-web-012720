$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  output_hash = {}
  outer_index = 0
  while outer_index <= directors_database.count do
    name = output_hash directors_database[outer_index][:name]
    inner_index = 0
    gross_total = 0
    while inner_index < directors_database[outer_index][:movies].count do
      gross_total += directors_database[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index++ # += 1
    end
    output_hash[:#{name}] = gross_total
    outer_index++ #+= 1
  end
  output_hash
  
end
