class ApplicationController < ActionController::Base
    def after_sign_out_path_for(resource)
        user_session_path
      end
      def after_sign_in_path_for(resource)
        stored_location_for(resource) || dashboard_index_path
      end
end
