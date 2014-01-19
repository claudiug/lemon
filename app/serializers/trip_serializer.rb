class TripSerializer < ActiveModel::Serializer
  attributes :name, :title, :rating, :seo_description, :cool_name
  def cool_name
    "#{name} - #{title} - #{rating}"
  end

  
end
