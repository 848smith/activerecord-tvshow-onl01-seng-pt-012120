class Show < ActiveRecord::Base
  def Show::highest_rating
    Show.maximum("rating")
  end
  
  def Show::most_popular_show
    Show.find(highest_rating)
  end
  
  def Show::lowest_rating
    Show.minumum("rating")
  end
  
  def least_popular_show
    Show.find(lowest_rating)
  end
  
  def ratings_sum
    Show.sum("ratings")
  end
  
  def popular_shows
    Show.where("rating > 5")
  end
  
  def shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end