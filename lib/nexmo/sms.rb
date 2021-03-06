# frozen_string_literal: true

module Nexmo
  class SMS < Namespace
    include Keys

    def send(params)
      request('/sms/json', params: hyphenate(params), type: Post)
    end

    def bulk_send(to_array, params)
      persistent_request(to_array, '/sms/json', params: hyphenate(params), type: Post)
    end

    private

    def host
      'rest.nexmo.com'
    end
  end
end
