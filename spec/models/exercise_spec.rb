require 'spec_helper'

describe Exercise do

  describe "when description is really long" do

    before do
      @exercise = Exercise.new(:description => rand(36**1000).to_s(36))
    end

    subject { @exercise }

    it { should respond_to :description }

  end

end
