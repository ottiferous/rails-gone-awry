require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should incldue the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Rails Gone Awry/)
    end

    it "shoudl not cindlue a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end
