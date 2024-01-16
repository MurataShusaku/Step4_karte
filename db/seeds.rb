# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

KarteTreatment.delete_all
KarteHistory.delete_all
Karte.delete_all
PatientHistory.delete_all
Patient.delete_all
TreatmentMaster.delete_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'karte_histories'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'treatments'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'karte_treatments'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'patients'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'patient_histories'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'kartes'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'treatment_masters'")

Patient.create(created_by: '村田')
Patient.create(created_by: '吉田')
Patient.create(created_by: '畠中')
Patient.create(created_by: '南野')

PatientHistory.create(patient_id:1, name: :'久保建英', kana_name: :'クボタケフサ', insuranse_card_number:1222134,insured_persons_numer:89201731, public_expense_number:31931317, public_healthcare_number:110862,coverage_type: nil ,address: :'茨城県つくば市', memo: nil)
PatientHistory.create(patient_id:1, name: :'三苫薫', kana_name: :'ミトマカオル', insuranse_card_number:849310,insured_persons_numer: 8943111, public_expense_number:78989384, public_healthcare_number:4334342,coverage_type: :'被保険者',address:nil, memo: nil)
PatientHistory.create(patient_id:2, name: :'伊藤純也', kana_name: :イトウジュンヤ, insuranse_card_number:78787878,insured_persons_numer:213213, public_expense_number:313131, public_healthcare_number:314411,coverage_type:nil,address: :'フランス', memo:'イトウジュンヤのメモ')


Karte.create(patient_id:1)
Karte.create(patient_id:2)
Karte.create(patient_id:2)
Karte.create(patient_id:2)
Karte.create(patient_id:3)
Karte.create(patient_id:3)
Karte.create(patient_id:4)
Karte.create(patient_id:4)
Karte.create(patient_id:4)


TreatmentMaster.create(name: :'注射', score: 100)
TreatmentMaster.create(name: :'手術', score: 100)
TreatmentMaster.create(name: :'レントゲン足部', score: 300)
TreatmentMaster.create(name: :'MRI', score: 9000)
TreatmentMaster.create(name: :'レントゲン肺', score: 9000)
TreatmentMaster.create(name: :'採血20ml', score: 9000)
TreatmentMaster.create(name: :'採血40ml', score: 9000)

KarteHistory.create(doctor: 1, karte_id: 1, prescription_additional_comment: :'いい感じじゃん')
KarteHistory.create(doctor: 1, karte_id: 1, prescription_additional_comment: nil)
KarteHistory.create(doctor: 2, karte_id: 2, prescription_additional_comment: :'保険適用')
KarteHistory.create(doctor: 3, karte_id: 3, prescription_additional_comment: :'これでお願いします')
KarteHistory.create(doctor: 3, karte_id: 5, prescription_additional_comment: nil)
KarteHistory.create(doctor: 3, karte_id: 6, prescription_additional_comment: nil)
KarteHistory.create(doctor: 3, karte_id: 7, prescription_additional_comment: :'いいと思います')
KarteHistory.create(doctor: 4, karte_id: 8, prescription_additional_comment: :'すっご〜〜い')


KarteTreatment.create(karte_history_id:1, treatment_id:1)
KarteTreatment.create(karte_history_id:1, treatment_id:2)
KarteTreatment.create(karte_history_id:1, treatment_id:3)
KarteTreatment.create(karte_history_id:2, treatment_id:1)
KarteTreatment.create(karte_history_id:2, treatment_id:4)
KarteTreatment.create(karte_history_id:3, treatment_id:1)
KarteTreatment.create(karte_history_id:3, treatment_id:2)
KarteTreatment.create(karte_history_id:3, treatment_id:5)
KarteTreatment.create(karte_history_id:3, treatment_id:7)