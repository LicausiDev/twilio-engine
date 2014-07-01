Twilio::Engine.routes.draw do
  # namespace :twilio do
  # get 'clicktocall/index'
  # end
  # 
  # namespace :twilio do
  # post 'clicktocall/process_call'
  # end
  # 
  # namespace :twilio do
  # post 'clicktocall/initiate_conference'
  # end
get 'clicktocall/index' => "clicktocall#index"
post 'clicktocall/process_call' => "clicktocall#process_call"
post 'clicktocall/initiate_conference' => "clicktocall#initiate_conference"
end
