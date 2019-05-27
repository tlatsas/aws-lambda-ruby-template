require 'json'

module AwsLambda
  class Template
    def self.handler(event:, context:)
      {
          statusCode: 200,
          body: JSON.generate("Function executed successfully! Processed by #{self.name}")
      }
    end
  end
end
