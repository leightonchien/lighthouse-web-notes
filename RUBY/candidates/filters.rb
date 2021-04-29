# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.detect {|x| x[:id] == id ? x : nil}
  end
  
  def experienced?(candidate)
    # Your code Here
    yes_to_exp = candidate[:years_of_experience] >= 2
    return "Candidate has the requested years of experience: #{yes_to_exp}"

  end
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below

  # def find(id)
#   @candidates.detect do |x|
#     if x[:id] == id
#       return x
#     else
#       nil
#     end
#   end
# end

# def find(id)
#   @candidates.each do |ele|
#     if ele[:id] == id
#       return @candidate[ele]
#     else
#       nil
#     end
#   end
# end

# def find(id) #takes in id
#   #returns candidate with that id
#   #if there is no candidate with that id, it returns nil
#   @candidates.each do |ele|
#     if ele[:id] == id
#       return @candidate[ele]
#     else
#       nil
#   end
# end

# def experienced?(candidate)
#   # this takes in a single 'candidate' hash (not array)
#   # Returns true if candidate has 2 or more of experience
#   # Returns false otherwise

#   yes_to_exp = candidate[:years_of_experience] >= 2
#   return "Candidate has the requested years of experience: #{yes_to_exp}"

# end