# frozen_string_literal: true

# class OrderMailer < ApplicationMailer
class OrderMailer < ApplicationMailer
  default from: 'Rambihari Udainiya <udainiyarambihari@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    @greeting = 'Hello'

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order

    @greeting = 'Hello'

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
