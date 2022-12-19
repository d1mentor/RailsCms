module ApplicationHelper
    def current_path
        current_uri = request.env['PATH_INFO']
    end  
end
