require 'test_helper'

class StatusTest < ActiveSupport::TestCase

 test("That a status requires content") {
   status = Status.new
   assert !status.save
   assert !status.errors[:content].empty?
 }
end