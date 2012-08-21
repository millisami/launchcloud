require 'helper'

describe Launchcloud do

  let(:runner) { Launchcloud::Runner.new }

  it "should print help text on STDOUT" do
    out, err = capture_io do
      runner.run
    end
    out.must_match("I ran")
  end
end
