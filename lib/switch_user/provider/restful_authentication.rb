require 'switch_user/provider/base'

module SwitchUser
  module Provider
    class RestfulAuthentication < Base
      def initialize(controller)
        @controller = controller
      end

      def login(user, scope = nil)
        @controller.current_user = user
      end

      def logout(scope = nil)
        clear_original_user
        @controller.logout_killing_session!
      end

      def current_user(scope = nil)
        @controller.current_user
      end
    end
  end
end
