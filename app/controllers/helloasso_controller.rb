class HelloassoController < ApplicationController
  skip_before_action :verify_authenticity_token

  def webhook
    p params
    AdminMailer.with(data: params.to_unsafe_h).debug_mail.deliver_later
    begin
      if params[:eventType] == 'Order'
        Helloasso::Order.process_order params[:data]
      end
    rescue
      PullHelloassoDataJob.perform_later "aniketmail669@gmail.com"
    end
    # 554
    head :ok
  end
end
