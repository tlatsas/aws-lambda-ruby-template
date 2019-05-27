require 'spec_helper'

require_relative '../../handlers/template'

module AwsLambda
  describe Template do
    let(:event) {
      {
          "resource": "lambda/template",
          "path": "lambda/template",
          "httpMethod": "GET",
          "headers": { },
          "queryStringParameters": {},
          "requestContext": {},
          "body": nil
      }
    }

    subject { AwsLambda::Template.handler(event: event, context: nil) }

    describe '#handler' do
      context 'responds successfully' do
        specify { expect(subject[:statusCode]).to eq(200) }
      end
    end
  end
end
