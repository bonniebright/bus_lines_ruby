require 'spec_helper'

describe Station do
  it { should have_many(:lines).through(:stops) }
end
