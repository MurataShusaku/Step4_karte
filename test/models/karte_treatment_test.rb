require "test_helper"

class KarteTreatmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @kartehistory1 = KarteHistory.create(doctor: 1, karte_id: 1, prescription_additional_comment: :’いい感じじゃん’)
    @treatment = TreatmentMaster.create(name: '注射', score: 100)
   
  end

  test "should save" do
    assert  @kartetreatment = KarteTreatment.create(treatment_id:1,karte_history_id:1)
  end
  
  
end
