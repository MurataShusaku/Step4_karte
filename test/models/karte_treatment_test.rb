require "test_helper"

class KarteTreatmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @kartetreatment = KarteTreatment.new(treatment_id:1,karte_history_id:1)
  end

  test "should unique Kartetreatment" do
    assert @kartetreatment.save
  end
  
end
