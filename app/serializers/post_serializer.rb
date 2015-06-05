class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date

  def date
    object.created_at.strftime("%m/%d/%Y")
  end
end
