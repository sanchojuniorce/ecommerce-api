module Admin::V1
    class CategoriesController < ApiController
        before_action :load_category, only: [:update, :destroy]

        def index
            @categories = Category.all            
        end    

        def create
            @category = Category.new
            @category.attributes = category_params
            save_category!
        end

        def update
            @category.attributes = category_params
            save_category!
        end

        def destroy
            @category.destroy!
        rescue
            render_error(fields: @category.errors.messages)
        end

        private
        def load_category
            @category = Category.find(params[:id])
        end

        def category_params
            return {} unless params.has_key?(:category)
            params.require(:category).permit(:name)
        end

        def save_category!
            @category.save!
            render :show
        rescue
            render_error(fields: @category.errors.messages)
        end
    end    
end    