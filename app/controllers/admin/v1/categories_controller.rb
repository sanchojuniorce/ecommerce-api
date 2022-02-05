module Admin::V1
    class CategoriesController < ApiController
        def index
            @categories = Category.all            
        end    

        def create
            @category = Category.new
            @category.attributes = category_params

            @category.save!
            render :show
            rescue
                render json: { errors: { fields: @category.errors.messages }}, status: :unprocessable_entity
        end    

        private

        def category_params
            return {} unless params.has_key?(:category)
            params.require(:category).permit(:name)
        end    
    end    
end    