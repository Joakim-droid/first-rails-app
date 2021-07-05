class PagesController < ApplicationController
  def about; end

  def home; end

  def contact
    @members = ['me', 'you', 'the other guy']

    return unless params[:member]

    @members = @members.select { |member| member.start_with?(params[:member]) }
  end
end
