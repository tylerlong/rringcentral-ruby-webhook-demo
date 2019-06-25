require 'ringcentral'

rc = RingCentral.new(ENV['RINGCENTRAL_CLIENT_ID'], ENV['RINGCENTRAL_CLIENT_SECRET'], ENV['RINGCENTRAL_SERVER_URL'])
rc.authorize(username: ENV['RINGCENTRAL_USERNAME'], extension: ENV['RINGCENTRAL_EXTENSION'], password: ENV['RINGCENTRAL_PASSWORD'])

WEBHOOK_ADDRESS = "https://2dde5848.ngrok.io"

r = rc.post('/restapi/v1.0/subscription', payload: {
    eventFilters: ['/restapi/v1.0/account/~/extension/~/message-store/instant?type=SMS'],
    deliveryMode: { transportType: 'WebHook', address: WEBHOOK_ADDRESS }
})

puts r.body['id']
puts "WebHook Ready"

rc.revoke()