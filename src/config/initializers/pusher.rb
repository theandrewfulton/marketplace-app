require 'pusher'
Pusher.app_id = ENV[Rails.application.credentials.dig(:pusher, :app_id)]
Pusher.key = ENV[Rails.application.credentials.dig(:pusher, :key)]
Pusher.secret = ENV[Rails.application.credentials.dig(:pusher, :secret)]
Pusher.cluster = ENV[Rails.application.credentials.dig(:pusher, :cluster)]
Pusher.logger = Rails.logger
Pusher.encrypted = true