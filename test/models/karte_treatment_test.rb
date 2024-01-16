require "test_helper"

class KarteTreatmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @kartehistory1 = KarteHistory.create(karte_history_id: 1,doctor: 1, karte_id: 1, prescription_additional_comment: :’いい感じじゃん’)
    @treatment = TreatmentMaster.create(treatment_id: 1,name: '注射', score: 100)
    @kartetreatment = KarteTreatment.new(treatment_id:1,karte_history_id:1)
  end

  test "should save" do
    assert @kartetreatment.save
  end
  
  
end
