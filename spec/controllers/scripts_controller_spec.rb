require 'rails_helper'

describe ScriptsController, type: :request do
  describe 'getting a script' do
    it 'responds with the script' do
      expected_script = {"start"=>["It was a dark and stormy night.", {"Sophie"=>"Sure is dark isn't it?"}, {"Klaus"=>"Do you not enjoy storms?"}, {"Sophie"=>"I could use a Talisker Storm right about now."}]}

      get '/script'
      expect(response).to be_success
      expect(JSON.parse(response.body)).to eq(expected_script)
    end
  end
end
