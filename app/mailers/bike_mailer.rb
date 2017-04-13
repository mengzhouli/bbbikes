class BikeMailer < ApplicationMailer
  def creation_confirmation(bike)
    @bike = bike

    mail(
      to:       @bike.user.email,
      subject:  "#{@bike.brand} bike created!"
    )
  end
end