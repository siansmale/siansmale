require 'spec_helper'

describe ProgramsController do

  describe "POST 'view'" do
    it "returns http success" do
      post 'view', { 'exercises' => ['1','2'] }
      response.should be_success
    end
  end

end
