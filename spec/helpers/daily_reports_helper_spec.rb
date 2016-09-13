require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the DailyReportsHelper. For example:
#
# describe DailyReportsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe DailyReportsHelper, type: :helper do
  describe "#transport_type_presenter" do
    it "returns a string from passed array" do
      expect(helper.transport_type_presenter(%w(First Last))).to eq("First, Last")
    end
  end
end
