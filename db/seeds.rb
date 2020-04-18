skin_care = Category.create(name: "スキンケア")
skin_care_lotion         = skin_care.children.create(name: "化粧水")
skin_care_beauty_essence = skin_care.children.create(name: "美容液")
skin_care_emulsion       = skin_care.children.create(name: "乳液")
skin_care_face_wash      = skin_care.children.create(name: "洗顔料")
skin_care_other          = skin_care.children.create(name: "その他")

body_care = Category.create(name: "ボディケア・オーラルケア")
body_care_sunscreen   = body_care.children.create(name: "日焼け止め")
body_care_body_cream  = body_care.children.create(name: "ボディクリーム")
body_care_hand_cream  = body_care.children.create(name: "ハンドクリーム")
body_care_tooth_paste = body_care.children.create(name: "歯磨き粉")
body_care_mouth_wash  = body_care.children.create(name: "マウスウォッシュ")
body_care_other       = body_care.children.create(name: "その他")

hair_care = Category.create(name: "ヘアケア")
hair_care_shampoo = hair_care.children.create(name: "シャンプー・コンディショナー")
hair_care_styling = hair_care.children.create(name: "スタイリング")
hair_care_other   = hair_care.children.create(name: "その他")

perfume = Category.create(name: "香水")
perfume_all   = perfume.children.create(name: "香水(全て)")
perfume_other = perfume.children.create(name: "香水(その他)")

