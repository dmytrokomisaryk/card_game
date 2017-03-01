module Api::V1
  class CardsController < ApiController
    before_action :authenticate_user!

    # GET /v1/card/one_more
    def one_more
      render json: Card.get_card.serializable_hash
    end
  end
end