require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'
account_sid = 'AC8fb180355e8f64aec3857244269d5523'
auth_token = 'cb8d49fc922fe62dd43383f90139ce55' 
@client = Twilio::REST::Client.new account_sid, auth_token
 
# Get an object from its sid. If you do not have a sid,
# check out the list resource examples on this page
@participant = @client.account.conferences.get('CFbbe4632a3c49700934481addd5ce1659').participants.get("CA386025c9bf5d6052a1d1ea42b4d16662")
puts @participant.start_conference_on_enter