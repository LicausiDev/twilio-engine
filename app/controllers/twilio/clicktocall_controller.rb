require_dependency "twilio/application_controller"
module Twilio
  class ClicktocallController < ApplicationController
    def index
    end

    def process_call
      if !params['number']
            redirect_to :action => '.', 'msg' => 'Invalid phone number'
            return
          end
 
          # parameters sent to Twilio REST API
          data = {
            :from => TWILIO_NUMBER,
            :to => SERVICE_PROVIDER_NUMBER,
            :url => BASE_URL + '/initiate_conference?number=' + params['number']
          }
 
          @client = Twilio::REST::Client.new(ACCOUNT_SID, ACCOUNT_TOKEN)
          @client.account.calls.create data
 
          redirect_to :action => 'index', 'msg' => "We are calling you at #{params['number']}..."
    end

    def initiate_conference
      @post_to = BASE_URL + '/initiate_conference'
          @number = params['number']
        	render :action => "initiate_conference.xml.builder", :layout => false
    end
  end
end
