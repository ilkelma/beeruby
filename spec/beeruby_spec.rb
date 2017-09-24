require "spec_helper"
require 'beeruby'

RSpec.describe Beeruby do
  it "has a version number" do
    expect(Beeruby::VERSION).not_to be nil
  end
end

RSpec.describe Beeruby::Bitterness do
  it "calculates IBUs with all values using the tinseth formula" do
    expect(Beeruby::Bitterness.tinseth(7.5, 0.14, 1.039, 60, 2.5)).to eql(8.0)
  end

  it "returns 0 when boil_time is 0" do
    expect(Beeruby::Bitterness.tinseth(7.5, 0.14, 1.039, 0, 2.5)).to eql(0.0)
  end
end
