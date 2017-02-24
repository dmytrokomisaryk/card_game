module Api::V1
  class UsersController < ApiController

    # POST /v1/user/login
    def login
      user = User.find_by_email(params[:email])
      if user.valid_password?(params[:password])
        render json: user.serializable_hash
      else
        render json: { errors: 'email or password is not valid' }
      end
    end
  end
end