module Overrides
  class SessionsController < DeviseTokenAuth::SessionsController
    def create
      super do |resource|
        session[:user_id] = resource.id
      end
    end

    def render_create_success
      render json: {
        data: {id: @resource.id, name: @resource, uid: @resource.uid, tokens: @resource.tokens}
      }
    end
  end
end
