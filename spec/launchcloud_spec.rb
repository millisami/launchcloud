# require 'spec_helper'
gem 'minitest'
require "minitest/autorun"
require_relative "../lib/launchcloud"

describe Launchcloud do

  let(:runner) { Launchcloud::Runner.new }

  it "works" do
    x = capture_io do
      puts "hi"
    end
    p x
  end

  it "should print help text on STDOUT" do
    skip
    flunk "Later"
    out, err = capture_io do
      runner.run
    end
    puts  "Out: #{out}"
    puts "Err: #{err}"
  end

  it "check the capture_io cmd" do
    out, err = capture_io do
      warn "The bad thing"
    end
    assert_match %r%bad%, err
  end
end
