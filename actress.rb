require './actor'
class Actress < Actor

  def initialize (age, oscars, last_movie_revenue)
    @age = age
    @oscars = oscars
    @last_movie_revenue = last_movie_revenue
  end

  def acting
    movie_type()
  end

  def get_a_manager
    "call the managing agency"
  end

  def go_to_cannes
    cannes_decision
  end

  private

  def cannes_decision
    if @last_movie_revenue > 5 || @oscars > 0
      "I am going to Cannes"
    else
      "I am working for RCN"
    end
  end

  def movie_type
    if @age < 30 && @oscars <= 1
      "Horror, comedy or kids movies"
    else
        get_a_manager
    end
  end
end
