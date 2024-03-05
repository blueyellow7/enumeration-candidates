# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
puts find(5)

puts experienced?(@candidates[1])

puts qualified_candidates(@candidates)

puts ordered_by_qualifications(@candidates)

pp @candidates