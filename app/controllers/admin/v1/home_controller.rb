module Admin::V1
    class HomeController < ApiController
        def index
            render json: {message: 'Uhull'}
        end    
    end    
end    