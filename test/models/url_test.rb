require 'test_helper'

class UrlTest < ActiveSupport::TestCase
 
test "should not save url without url" do
  url = Url.new
  assert_not url.save
end


test "should  save url without url" do
  url = Url.new
  url.basicUrl = "vitrinasantioquia.com"
  assert url.save
end

end
