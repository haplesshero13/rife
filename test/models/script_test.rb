require 'test_helper'

class ScriptTest < ActiveSupport::TestCase
  test '#initialize' do
    expected_script = {"start"=>["It was a dark and stormy night.", {"Sophie"=>"Sure is dark isn't it?"}, {"Klaus"=>"Do you not enjoy storms?"}, {"Sophie"=>"I could use a Talisker Storm right about now."}]}
    assert_equal Script.new(File.join(Rails.root, 'test/fixtures/files/script.yml')), expected_script
  end
end
