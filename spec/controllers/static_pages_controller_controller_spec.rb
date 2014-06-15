require 'spec_helper'

describe StaticPagesControllerController do

  describe "GET 'winners'" do
    it "returns http success" do
      get 'winners'
      response.should be_success
    end
  end

end
