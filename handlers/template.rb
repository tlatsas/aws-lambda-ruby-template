require 'json'
require_relative '../lib/log'

module AwsLambda
  class Template
    def self.handler(event:, context:)
      Log.info ('Logging from handler')

      {
          statusCode: 200,
          body: JSON.generate("Function executed successfully! Processed by #{self.name}")
      }
    end
  end
end
