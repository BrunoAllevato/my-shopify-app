class PurchasesController < ApplicationController
  def process_loyalty_request
    sale_id = params[:saleId]
    sale_price = params[:salePrice].to_f
    buyer_id = params[:buyerId]

    cashback_value = sale_price * 0.2

    render json: { saleId: sale_id, buyerId: buyer_id, cashbackValue: cashback_value }
  end
end

# class PurchasesController < ApplicationController
#   def process_loyalty_request
#     purchase = Purchase.find_by(sale_id: params[:saleId], buyer_id: params[:buyerId])

#     if purchase
#       cashback_value = purchase.sale_price * 0.2
#       response = {
#         saleId: purchase.sale_id,
#         buyerId: purchase.buyer_id,
#         cashbackValue: cashback_value
#       }
#       render json: response
#     else
#       render json: { error: "Purchase not found" }, status: :not_found
#     end
#   end
# end
