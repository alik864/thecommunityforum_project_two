
class CategoriesController<ApplicationController

def index
    @categories = Category.all.order("name ASC")

    render json: @categories
  end


end
