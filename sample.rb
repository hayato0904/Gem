require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
  handler do |job|
    sample = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
    sample.notify ("hello")
  end
  every(10.seconds, '10秒毎')
  every(1.minutes, '1分毎')
end