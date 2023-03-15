# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    m_id = self.movie_id

    the_movie = Movie.where({ :id => m_id}).at(0)

    return the_movie
  end

  def character 
    m_id = self.id
    the_character = Character.where({ :id => m_id}).at(0)
    return the_character
  end

  def actor
    fkey = self.actor_id
    matching_records = Actor.where({ :id => fkey})
    the_one = matching_records.at(0)
    return the_one

  end

end
