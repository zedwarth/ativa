class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:destroy]

  def create
    @subscription = current_user.subscriptions.build(project_id: params[:project_id])

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to project_path(params[:project_id]), notice: 'You are now subscribed to this project.' }
      else
        format.html { render action: 'show', alert: 'Your subscription could not be processed.' }
      end
    end
  end

  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to project_path(params[:project_id]), notice: 'You are now unsubscribed from this project.' }
      format.json { head :no_content }
    end
  end

  private

    def set_subscription
      @subscription = Subscription.find(params[:id])
    end
end