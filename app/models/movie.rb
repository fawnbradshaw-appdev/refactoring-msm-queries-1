# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    d_id = self.director_id
    the_director = Director.where({ :id => d_id}).at(0)
    return the_director
  end

  def character
    m_id = self.id
    the_character = Character.where ({ :id => m_id}).at(0)
    return the_characer
  end

end
