# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do | candidate |
    if candidate[:id] == id
      return candidate
    end
  end
  nil
end



def experienced?(candidate)
  return candidate[:years_of_experience] >= 2
end



def qualified_candidates(candidates)
  # Select all candidates that have the following qualifications: 
  candidates.select do |element|
      # Have experience
    candidate[:years_of_experience] > 0 &&  
      # Have 100+ Github points
    candidate[:github_points] >= 100 && 
      # Know Ruby or Python
    (element[:languages].include?('Ruby') || element[:languages].include?('Python')) && 
      # Applied in the last 15 days
    (Date.today - element[:date_applied]).to_i <= 15 && 
      # Are 18+ yo
    element[:age]>17
  end
end



# More methods will go below

def ordered_by_qualifications(candidates)
    # Candidates with the most experience are sorted higher. If years of experiance = same: rank by github points
  candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end 
  pp candidates
end