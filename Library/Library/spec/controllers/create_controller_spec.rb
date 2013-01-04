require 'spec_helper'

describe CreateController do

  describe "GET 'failure'" do
    it "returns http success" do
      get 'failure'
      response.should be_success
    end
  end

end
