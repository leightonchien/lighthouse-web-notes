def find(id)
    @candidates.detect {|person| person[:id] == id ? person : nil}
  end
  
  def experienced?(candidate)
    yes_to_exp = candidate[:years_of_experience] >= 2
    return "Candidate has the requested years of experience: #{yes_to_exp}"
  end
  
  def has_enough_github_pts?(candidate)
    candidate[:github_points] >= 100
  end
  
  def has_right_languages?(candidate)
    candidate[:languages].include?('Ruby' || 'Python')
  end
  
  def applied_within_15_days?(candidate)
    candidate[:date_applied] > 15.days.ago.to_date
  end
  
  def is_of_age?(candidate)
    candidate[:age] >= 18
  end