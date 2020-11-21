class UsersController < ApplicationController
  def profile
    # @to_drink = current_user.beers.join(:users_beers).WHERE(users_beers: { drank: false })
    # @drank = current_user.beers.join(:users_beers).WHERE(users_beers: { drank: true })
  end

  def settings;end
end
