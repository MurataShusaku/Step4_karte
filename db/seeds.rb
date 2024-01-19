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
KartePrescription.delete_all
MedicineMaster.delete_all


ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'karte_histories'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'treatments'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'karte_treatments'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'patients'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'patient_histories'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'kartes'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'treatment_masters'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'karte_prescriptions'")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'medicine_masters'")

Patient.create(created_by: '村田')
Patient.create(created_by: '吉田')
Patient.create(created_by: '畠中')
Patient.create(created_by: '南野')

PatientHistory.create(patient_id:1, name: :'久保建英', kana_name: :'クボタケフサ', insuranse_card_number:12221347,insured_persons_numer:89201731, public_expense_number:31931317, public_healthcare_number:66110862,coverage_type: :'被扶養者' ,address: :'茨城県つくば市', memo: nil, birthdate: "2001-1-1",sex_id:1)
PatientHistory.create(patient_id:1, name: :'久保建英.最新', kana_name: :'クボタケフササイシン', insuranse_card_number:12282134,insured_persons_numer: 89201731, public_expense_number:78989384, public_healthcare_number:11090862,coverage_type: :'被保険者',address:nil, memo: nil,birthdate: "2001-1-1",sex_id:0)
PatientHistory.create(patient_id:2, name: :'伊藤純也', kana_name: :イトウジュンヤ, insuranse_card_number:78787878,insured_persons_numer:21321003, public_expense_number:31311111, public_healthcare_number:31441991,coverage_type: :'被保険者',address: :'フランス', memo:'イトウジュンヤのメモ',sex_id:1)
PatientHistory.create(patient_id:3, name: :'冨安健洋', kana_name: :トミヤスタケヒロ, insuranse_card_number:12238133,insured_persons_numer:31321933, public_expense_number:31309019, public_healthcare_number:99040911,coverage_type: :'被扶養者',address: :'イギリス', memo:'こんにちは冨安です',sex_id:1)
PatientHistory.create(patient_id:4, name: :'三苫薫', kana_name: :ミトマカオル, insuranse_card_number:90213133,insured_persons_numer:9311933, public_expense_number:24330019, public_healthcare_number:99033411,coverage_type:nil,address: :'イギリス', memo:'こんにちは三苫です',sex_id:1)


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


ClinicInformation.create(name: :'聖人クリニック', postal_code: :'305-0035', address: :'茨城県つくば市松代4-2-7',phone_number: :'000-0000-0000',prefecture_code: :'42', clinic_code: :'12344819')
	     
MedicineMaster.create(name: 'アスピリン', usage: '内服', unit: '錠')
MedicineMaster.create(name: 'イブプロフェン', usage: '内服', unit: '錠')
MedicineMaster.create(name: 'アセトアミノフェン', usage: '内服', unit: '錠')
MedicineMaster.create(name: 'ペニシリン', usage: '内服', unit: '錠')
MedicineMaster.create(name: 'アムロジピン', usage: '内服', unit: '錠')
MedicineMaster.create(name: 'リゾチリン', usage: '頓用', unit: 'g')
MedicineMaster.create(name: 'ベンゾカイン', usage: '外用', unit: 'g')
MedicineMaster.create(name: 'ヒドロコルチゾン', usage: '外用', unit: 'g')
MedicineMaster.create(name: 'クロトリマゾール', usage: '外用', unit: 'g')
MedicineMaster.create(name: 'エナラプリル', usage: '内服', unit: '錠')


KartePrescription.create(karte_history_id: 1, medicine_id: 1,amount: 20, as_needed: 0, as_needed_comment: '', comment: '1日3回食後に服用')
KartePrescription.create(karte_history_id: 2, medicine_id: 1,amount: 40, as_needed: 1, as_needed_comment: 'お腹が痛くなったら飲んでください', comment: '1日3回食後に服用')
KartePrescription.create(karte_history_id: 2, medicine_id: 3,amount: 50, as_needed: 0, as_needed_comment: '', comment: '寝る前に服用')
KartePrescription.create(karte_history_id: 2, medicine_id: 4,amount: 1210, as_needed: 1, as_needed_comment: '頭痛がひどいときに飲んでください', comment: '1日3回食後に服用')
KartePrescription.create(karte_history_id: 5, medicine_id: 5,amount: 123, as_needed: 0, as_needed_comment: '', comment: '朝食後に服用')
KartePrescription.create(karte_history_id: 5, medicine_id: 6,amount: 40, as_needed: 1, as_needed_comment: 'かゆみがある場合に使用', comment: '')
KartePrescription.create(karte_history_id: 5, medicine_id: 1,amount: 30, as_needed: 0, as_needed_comment: '', comment: '毎食後に服用')
KartePrescription.create(karte_history_id: 8, medicine_id: 3,amount: 100, as_needed: 1, as_needed_comment: '痛みが強いときに服用', comment: '')
KartePrescription.create(karte_history_id: 9, medicine_id: 5,amount: 100, as_needed: 0, as_needed_comment: '', comment: '夜のみ服用')
KartePrescription.create(karte_history_id: 10, medicine_id: 10,amount: 119, as_needed: 1, as_needed_comment: '不安を感じたときに飲んでください', comment: '')

