require "test_helper"

class TreatmentMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @treatment = TreatmentMaster.new(name: '注射', score: 100)
  end

  test "should valid" do
    assert @treatment.valid?
  end

end
