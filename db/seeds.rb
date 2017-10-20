group_list = {
  name: "seated"
},
{
  name: "standing"
},
{
  name: "backbend"
},
{
  name: "surya namaskara"
},
{
  name: "arm balance"
},
{
  name: "meditative"
},
{
  name: "supine"
},
{
  name: "forward fold"
}

group_list.each do |group|
  Group.new(group).save
end


asana_list = {
  english_name: "Downward-Facing Dog",
  devanagari_name: "अधोमुखश्वानासन",
  transliterated_name: "Adho Mukha Śvānāsana",
  group_id: 4
},
{
  english_name: "Half-bound Lotus Intense Stretch",
  devanagari_name: "अर्ध बद्ध पद्मोत्तानासन",
  transliterated_name: "Ardha Baddha Padmottānāsana",
  group_id: 2
},
{
  english_name: "Bound Angle Pose [A]",
  devanagari_name: "बद्ध कोणासन [A]",
  transliterated_name: "Baddha Koṇāsana [A]",
  group_id: 1
},
{
  english_name: "Head to Knee Pose [A]",
  devanagari_name: "जानु शीर्षासन [A]",
  transliterated_name: "Jānu Śīrṣāsana [A]",
  group_id: 1
},
{
  english_name: "Horizontal Facing Intense Back Body Stretch",
  devanagari_name: "तिर्यंमुख एकपाद पश्चिमोत्तानासन",
  transliterated_name: "Tiryaṁ-Mukha Eka-Pāda Paścimottānāsana",
  group_id: 1
},
{
  english_name: "Stretched Hand Grasps Big Toe Pose",
  devanagari_name: "उत्थित हस्त पादान्गुष्ठासन",
  transliterated_name: "Utthita Hasta Pādānguṣṭhāsana",
  group_id: 2
}

asana_list.each do |hash|
  Asana.new(hash).save
end

