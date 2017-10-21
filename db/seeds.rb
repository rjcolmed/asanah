group_list = {
  name: "standing" #1
},
{
  name: "seated" #2
},
{
  name: "supine" #3
},
{
  name: "surya namaskara" #4
},
{
  name: "forward fold" #5
},
{
  name: "backbend" #6
},
{
  name: "arm balance" #7
},
{
  name: "inversion" #8
},
{
  name: "meditative" #9
},
{
  name: "twisting" #10
}

group_list.each do |group|
  Group.new(group).save
end

asana_list = {
  devanagari_name: "अधोमुखश्वानासन",
  transliterated_name: "Adho Mukha Śvānāsana",
  english_name: "Downward-Facing Dog",
  group_id: 4
},
{
  devanagari_name: "अधोमुखवृक्षासन",
  transliterated_name: "Adho Mukha Vṛkṣāsana",
  english_name: "Downward-Facing Tree Pose",
  group_id: 7
},
{
  devanagari_name: "आकर्णधनुरासन",
  transliterated_name: "Ākarṇa Dhanurāsana",
  english_name: "Archer's Pose",
  group_id: 2
},
{
  devanagari_name: "अञ्जनेयासन",
  transliterated_name: "Anjaneyāsana",
  english_name: "Crescent Pose",
  group_id: 1
},
{
  devanagari_name: "अर्ध बद्ध पद्मोत्तानासन",
  transliterated_name: "Ardha Baddha Padmottānāsana",
  english_name: "Half-bound Lotus Intense Stretch",
  group_id: 1
},
{
  devanagari_name: "अर्ध बद्ध पद्म पश्चिमोत्तानासन",
  transliterated_name: "Ardha Baddha Padma Paschimottanasana",
  english_name: "Half-bound Lotus and Intense Back Stretch",
  group_id: 2
},
{
  devanagari_name: "अर्धचन्द्रासन",
  transliterated_name: "Ardha Candrāsana",
  english_name: "Half Moon Pose",
  group_id: 1
},
{
  devanagari_name: "अर्धमत्स्येन्द्रासन",
  transliterated_name: "Ardha Matsyendrāsana",
  english_name: "Half Lord of the Fishes Pose",
  group_id: 10
},
{
  devanagari_name: "अर्धनवासन",
  transliterated_name: "Ardha Navāsana",
  english_name: "Half Boat Pose",
  group_id: 2
},
{
  devanagari_name: "अष्टावक्रासन",
  transliterated_name: "Aṣṭāvakrāsana",
  english_name: "Eight Angle Pose",
  group_id: 7

},
{
  devanagari_name: "अवलोकितेश्वर",
  transliterated_name: "Avalokiteśvara",
  english_name: "Goddess of Mercy Pose",
  group_id: 2
},
{
  devanagari_name: "बद्ध कोणासन [A]",
  transliterated_name: "Baddha Koṇāsana [A]",
  english_name: "Bound Angle Pose [A]",
  group_id: 2
},
{
  devanagari_name: "बद्ध कोणासन [B]",
  transliterated_name: "Baddha Koṇāsana [B]",
  english_name: "Bound Angle Pose [B]",
  group_id: 2
},
{
  devanagari_name: "बद्ध कोणासन [C]",
  transliterated_name: "Baddha Koṇāsana [C]",
  english_name: "Bound Angle Pose [C]",
  group_id: 2
},
{
  devanagari_name: "बद्ध हस्त शीर्षासन [A]",
  transliterated_name: "Baddha Hasta Śīrṣāsana [A]",
  english_name: "Bound Hands Headstand [A]",
  group_id: 8
},
{
  devanagari_name: "बद्ध हस्त शीर्षासन [B]",
  transliterated_name: "Baddha Hasta Śīrṣāsana [B]",
  english_name: "Bound Hands Headstand [B]",
  group_id: 8
},
{
  devanagari_name: "बद्ध हस्त शीर्षासन [C]",
  transliterated_name: "Baddha Hasta Śīrṣāsana [C]",
  english_name: "Bound Hands Headstand [C]",
  group_id: 8
},
{
  devanagari_name: "बद्ध हस्त शीर्षासन [D]",
  transliterated_name: "Baddha Hasta Śīrṣāsana [D]",
  english_name: "Bound Hands Headstand [D]",
  group_id: 8
},
{
  devanagari_name: "बकासन [A]",
  transliterated_name: "Bakāsana [A]",
  english_name: "Crane Pose [A]",
  group_id: 7
},
{
  devanagari_name: "बालासन",
  transliterated_name: "Bālāsana",
  english_name: "Child's Pose",
  group_id: 9
},
{
  devanagari_name: "भरद्वाजासन",
  transliterated_name: "Bharadvājāsana",
  english_name: "Bharadvaja's Pose",
  group_id: 10
},
{
  devanagari_name: "भेकासन",
  transliterated_name: "Bhekāsana",
  english_name: "Frog Pose",
  group_id: 6
},
{
  devanagari_name: "भुजङ्गासन",
  transliterated_name: "Bhujaṅgāsana",
  english_name: "Cobra Pose",
  group_id: 6
},
{
  devanagari_name: "भुजपीडासन",
  transliterated_name: "Bhujapīḍāsana",
  english_name: " Pressure Pose",
  group_id: 7
},
{
  devanagari_name: "बिडालासन",
  transliterated_name: "Biḍālāsana",
  english_name: "Cat Pose",
  group_id: 9
},
{
  devanagari_name: "चक्रासन",
  transliterated_name: "Cakrāsana",
  english_name: "Wheel Pose",
  group_id: 6
},
{
  devanagari_name: "चतुरङ्ग दण्डासन",
  transliterated_name: "Caturaṅga Daṇḍāsana",
  english_name: "Four-Limbed Stick Pose",
  group_id: 4
},
{
  devanagari_name: "दण्डासन",
  transliterated_name: "Daṇḍāsana",
  english_name: "Stick Pose",
  group_id: 2
},
{
  devanagari_name: "धनुरासन",
  transliterated_name: "Dhanurāsana",
  english_name: "Bow Pose",
  group_id: 6
},
{
  devanagari_name: "द्विपादशीर्षासन",
  transliterated_name: "Dvi Pāda Śīrṣāsana",
  english_name: "Two-footed Head Pose",
  group_id: 2
},
{
  devanagari_name: "द्विपदविपरीतदण्डासन",
  transliterated_name: "Dvi Pāda Viparīta Daṇḍāsana",
  english_name: "Two-Legged Inverted Staff Pose",
  group_id: 6
},
{
  devanagari_name: "गर्भ पिण्डासन",
  transliterated_name: "Garbha Piṇḍāsana",
  english_name: "Embryo in the Womb Pose",
  group_id: 2
},
{
  devanagari_name: "जानु शीर्षासन [A]",
  transliterated_name: "Jānu Śīrṣāsana [A]",
  english_name: "Head to Knee Pose [A]",
  group_id: 5
},
{
  devanagari_name: "जानु शीर्षासन [B]",
  transliterated_name: "Jānu Śīrṣāsana [B]",
  english_name: "Head to Knee Pose [B]",
  group_id: 5
},
{
  devanagari_name: "जानु शीर्षासन [C]",
  transliterated_name: "Jānu Śīrṣāsana [C]",
  english_name: "Head to Knee Pose [C]",
  group_id: 5
},
{
  devanagari_name: "कपोतासन [A]",
  transliterated_name: "Kapotāsana [A]",
  english_name: "Pigeon Pose [A]",
  group_id: 6
},
{
  devanagari_name: "कपोतासन [B]",
  transliterated_name: "Kapotāsana [B]",
  english_name: "Pigeon Pose [B]",
  group_id: 6
},
{
  devanagari_name: "करान्दावासन",
  transliterated_name: "Karāndāvāsana",
  english_name: "Himalayan Duck Pose",
  group_id: 8
},
{
  devanagari_name: "क्रोउन्चासन",
  transliterated_name: "Krouncāsana",
  english_name: "Heron Pose",
  group_id: 2
},
{
  devanagari_name: "कुक्कुटासन",
  transliterated_name: "Kukkuṭāsana",
  english_name: "Rooster Pose",
  group_id: 7

},
{
  devanagari_name: "कूर्मासन",
  transliterated_name: "Kūrmāsana",
  english_name: "Turtle Pose",
  group_id: 2
},
{
  devanagari_name: "ळघुवज्रासन",
  transliterated_name: "Ḻaghu-Vajrāsana",
  english_name: "Little Thunderbolt Pose",
  group_id: 6
},
{
  devanagari_name: "मरीच्यासन [A]",
  transliterated_name: "Marīcyāsana [A]",
  english_name: "Marichi's Pose [A]",
  group_id: 10
},
{
  devanagari_name: "मरीच्यासन [B]",
  transliterated_name: "Marīcyāsana [B]",
  english_name: "Marichi's Pose [B]",
  group_id: 10
},
{
  devanagari_name: "मरीच्यासन [C]",
  transliterated_name: "Marīcyāsana [C]",
  english_name: "Marichi's Pose [C]",
  group_id: 10
},
{
  devanagari_name: "मरीच्यासन [D]",
  transliterated_name: "Marīcyāsana [D]",
  english_name: "Marichi's Pose [D]",
  group_id: 10
},
{
  devanagari_name: "मयूरासन",
  transliterated_name: "Mayūrāsana",
  english_name: "Peacock Pose",
  group_id: 7
},
{
  devanagari_name: "मुक्त हस्त शीर्षासन [A]",
  transliterated_name: "Mukta Hasta Śīrṣāsana [A]",
  english_name: "Free Hand Headstand [A]",
  group_id: 8
},
{
  devanagari_name: "मुक्त हस्त शीर्षासन [B]",
  transliterated_name: "Mukta Hasta Śīrṣāsana [B]",
  english_name: "Free Hand Headstand [B]",
  group_id: 8
},
{
  devanagari_name: "मुक्त हस्त शीर्षासन [C]",
  transliterated_name: "Mukta Hasta Śīrṣāsana [C]",
  english_name: "Free Hand Headstand [C]",
  group_id: 8
},
{
  devanagari_name: "नावासन",
  transliterated_name: "Nāvāsana",
  english_name: "Boat Pose",
  group_id: 2
},
{
  devanagari_name: "पार्श्व धनुरासन",
  transliterated_name: "Pārśva Dhanurāsana",
  english_name: "Sideways Bow Pose",
  group_id: 6
},
{
  devanagari_name: "पाशासन",
  transliterated_name: "Pāśāsana",
  english_name: "Noose Pose",
  group_id: 10
},
{
  devanagari_name: "पश्चिमोत्तानासन [A]",
  transliterated_name: "Paścimottānāsana [A]",
  english_name: "Intense Back Stretch [A]",
  group_id: 5
},
{
  devanagari_name: "पश्चिमोत्तानासन [B]",
  transliterated_name: "Paścimottānāsana [B]",
  english_name: "Intense Back Stretch [B]",
  group_id: 5
},
{
  devanagari_name: "पश्चिमोत्तानासन [C]",
  transliterated_name: "Paścimottānāsana [C]",
  english_name: "Intense Back Stretch [C]",
  group_id: 5
},
{
  devanagari_name: "पश्चिमोत्तानासन [D]",
  transliterated_name: "Paścimottānāsana [D]",
  english_name: "Intense Back Stretch [D]",
  group_id: 5
},
{
  devanagari_name: "पूर्वोत्तानासन",
  transliterated_name: "Pūrvottānāsana",
  english_name: "Intense Front Stretch",
  group_id: 6
},
{
  devanagari_name: "समस्थितिः",
  transliterated_name: "Samasthitiḥ",
  english_name: "Equal-standing Pose",
  group_id: 4
},
{
  devanagari_name: "सेतु बन्धासन",
  transliterated_name: "Setu Bandhāsana",
  english_name: "Bridge Seal Pose",
  group_id: 6
},
{
  devanagari_name: "शलभासन [A]",
  transliterated_name: "Śalabhāsana [A]",
  english_name: "Locust Pose [A]",
  group_id: 2
},
{
  devanagari_name: "शलभासन [B]",
  transliterated_name: "Śalabhāsana [B]",
  english_name: "Locust Pose [B]",
  group_id: 2
},
{
  devanagari_name: "सुप्त कोणासन",
  transliterated_name: "Supta Koṇāsana",
  english_name: "Lying Angle Pose",
  group_id: 3
},
{
  devanagari_name: "सुप्तकूर्मासन",
  transliterated_name: "Supta-Kūrmāsana",
  english_name: "Sleeping Turtle Pose",
  group_id: 2
},
{
  devanagari_name: "सुप्त पादान्गुष्ठासन",
  transliterated_name: "Supta Pādānguṣṭhāsana",
  english_name: "Lying Big Toe Pose",
  group_id: 3
},
{
  devanagari_name: "सुप्त पार्श्वसहित",
  transliterated_name: "Supta Pārśvasahita",
  english_name: "Lying Side Pose",
  group_id: 3
},
{
  devanagari_name: "सुप्त वज्रासन",
  transliterated_name: "Supta Vajrāsana",
  english_name: "Lying Thunderbolt Pose",
  group_id: 2
},
{
  devanagari_name: "तिर्यंमुख एकपाद पश्चिमोत्तानासन",
  transliterated_name: "Tiryaṁ-Mukha Eka-Pāda Paścimottānāsana",
  english_name: "Horizontal Facing Intense Back Body Stretch",
  group_id: 5
},
{
  devanagari_name: "टिट्टिभासन [A]",
  transliterated_name: "Ṭiṭṭibhāsana [A]",
  english_name: "Insect Pose [A]",
  group_id: 1
},
{
  devanagari_name: "टिट्टिभासन [C]",
  transliterated_name: "Ṭiṭṭibhāsana [C]",
  english_name: "Insect Pose [C]",
  group_id: 1
},
{
  devanagari_name: "उभय पादान्गुष्ठासन",
  transliterated_name: "Ubhaya Pādānguṣṭhāsana",
  english_name: "Both Big Toes Pose",
  group_id: 2
},
{
  devanagari_name: "उपविष्ठ कोणासन [A]",
  transliterated_name: "Upaviṣṭha Koṇāsana [A]",
  english_name: "Angle Pose [A]",
  group_id: 2
},
{
  devanagari_name: "उपविष्ठ कोणासन [B]",
  transliterated_name: "Upaviṣṭha Koṇāsana [B]",
  english_name: "Angle Pose [B]",
  group_id: 2
},
{
  devanagari_name: "ऊर्ध्व धनुरासन",
  transliterated_name: "Ūrdhva Dhanurāsana",
  english_name: "Upward Bow Pose",
  group_id: 6
},
{
  devanagari_name: "ऊर्ध्वमुख पश्चिमोत्तानासन",
  transliterated_name: "Ūrdhva-Mukha Paścimottānāsana",
  english_name: "Upward-facing Intense Back Body Stretch",
  group_id: 2
},
{
  devanagari_name: "ऊर्ध्वमुखश्वानासन",
  transliterated_name: "Ūrdhva Mukha Śvānāsana",
  english_name: "Upward Facing Dog",
  group_id: 4
},
{
  devanagari_name: "ऊर्ध्व वृक्षासन",
  transliterated_name: "Ūrdhva Vr̥kṣāsana",
  english_name: "Upward Tree Pose",
  group_id: 4
},
{
  devanagari_name: "उष्ट्रासन",
  transliterated_name: "Uṣṭrāsana",
  english_name: " Camel Pose",
  group_id: 6
},
{
  devanagari_name: "उत्थित हस्त पादान्गुष्ठासन",
  transliterated_name: "Utthita Hasta Pādānguṣṭhāsana",
  english_name: "Stretched Hand Grasps Big Toe Pose",
  group_id: 1
},
{
  devanagari_name: "उत्कटासन",
  transliterated_name: "Utkaṭāsana",
  english_name: "Chair/Intense Pose",
  group_id: 1

},
{
  devanagari_name: "उत्तनसन [A]",
  transliterated_name: "Uttānāsana [A]",
  english_name: "Stretched Pose [A]",
  group_id: 4

},
{
  devanagari_name: "उत्तनसन [B]",
  transliterated_name: "Uttānāsana [B]",
  english_name: "Stretched Pose [B]",
  group_id: 4

},
{
  devanagari_name: "वीरभद्रासन [A]",
  transliterated_name: "Vīrabhadrāsana [A]",
  english_name: "Warrior [A]",
  group_id: 1
},
{
  devanagari_name: "वीर [B]",
  transliterated_name: "Vīrabhadrāsana [B]",
  english_name: "Warrior [B]",
  group_id: 1
},
{
  devanagari_name: "योगनिद्रासन",
  transliterated_name: "Yoga Nidrāsana]",
  english_name: "Yoga Sleep Pose",
  group_id: 3
}

asana_list.each do |hash|
  Asana.new(hash).save
end

