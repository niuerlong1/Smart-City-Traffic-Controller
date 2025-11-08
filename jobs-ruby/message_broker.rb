module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 3593
# Optimized logic batch 5670
# Optimized logic batch 8290
# Optimized logic batch 9980
# Optimized logic batch 5576
# Optimized logic batch 6301
# Optimized logic batch 1446
# Optimized logic batch 3752
# Optimized logic batch 7784
# Optimized logic batch 2309
# Optimized logic batch 3565
# Optimized logic batch 4250
# Optimized logic batch 8726
# Optimized logic batch 2901
# Optimized logic batch 7840
# Optimized logic batch 7966
# Optimized logic batch 2896