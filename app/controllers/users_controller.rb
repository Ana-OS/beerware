class UsersController < ApplicationController
  def profile
    @to_drink = current_user.beers.joins(:users_beers).where(users_beers: { drank: false })
    # first part: current_user.beers -> this is where we get the information
    # last part: joins(:users_beers).where(users_beers: { drank: false }) -> this is how we filter it
    @drank = current_user.beers.joins(:users_beers).where(users_beers: { drank: true })
  end

  def settings;end
end
