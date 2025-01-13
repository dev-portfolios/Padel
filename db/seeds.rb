amenities_data = [
  { "title_en"=>"WIFI", "title_cn"=>"WIFI", "url"=>"https://assets-sh-padelx.shanghaipadel.com/wifi.png", "position"=>0 },
  { "title_en"=>"Shower", "title_cn"=>"浴室", "url"=>"https://assets-sh-padelx.shanghaipadel.com/shower.png", "position"=>1 },
  { "title_en"=>"Gym", "title_cn"=>"健身房", "url"=>"https://assets-sh-padelx.shanghaipadel.com/gym-icon.png", "position"=>2 },
  { "title_en"=>"Jacuzzi", "title_cn"=>"按摩池", "url"=>"https://assets-sh-padelx.shanghaipadel.com/jacuzzi.png", "position"=>3 },
  { "title_en"=>"Locker", "title_cn"=>"更衣室", "url"=>"https://assets-sh-padelx.shanghaipadel.com/clothes-hanger.png", "position"=>4 },
  { "title_en"=>"Sauna", "title_cn"=>"桑拿房", "url"=>"https://assets-sh-padelx.shanghaipadel.com/sauna.png", "position"=>5 },
  { "title_en"=>"Towel", "title_cn"=>"毛巾", "url"=>"https://assets-sh-padelx.shanghaipadel.com/towel.png", "position"=>6 },
  { "title_en"=>"Lotions", "title_cn"=>"护肤用品", "url"=>"https://assets-sh-padelx.shanghaipadel.com/lotion.png", "position"=>7 },
  { "title_en"=>"Toiletries", "title_cn"=>"洗漱用品", "url"=>"https://assets-sh-padelx.shanghaipadel.com/toothbrush.png", "position"=>8 },
  { "title_en"=>"Water", "title_cn"=>"饮用水", "url"=>"https://assets-sh-padelx.shanghaipadel.com/water.png", "position"=>9 },
  { "title_en"=>"free parking", "title_cn"=>"免费停车", "url"=>"https://assets-sh-padelx.shanghaipadel.com/park.png", "position"=>10 },
  { "title_en"=>"Parking", "title_cn"=>"有停车位", "url"=>"https://assets-sh-padelx.shanghaipadel.com/park.png", "position"=>11 },
  { "title_en"=>"Racket rent", "title_cn"=>"Racket rent", "url"=>"https://assets-sh-padelx.shanghaipadel.com/park.png", "position"=>14 }
]

amenities_data.each { |x| Amenity.create(x) }

DAYS = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ].freeze



venues_data = [
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX @ BISS',
    name_cn: 'PadelX @ 上海英国学校',
    description_en: 'Padel in the British School',
    description_cn: '板式网球在英国学校',
    rules_en: 'Play Safely',
    rules_cn: '安全地玩',
    address_en: '111 Jinguang Rd, Minhang District',
    address_cn: '闵行区金光路111号',
    area_en: 'Minhang',
    area_cn: '闵行区',
    latitude: 31.201912,
    longitude: 121.285078,
    late_cancellation_in_minutes: 4320,
    late_cancellation: true,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/padelx-coming2.png',
    opening_at: '09:00:00',
    closing_at: '22:00:00',
    confirm_in_minutes: 8,
    min_bookable_minutes: 60,
    max_bookable_units: 2,
    unit_price: 240.0,
    business_hours: '9:00 to 22:00, Saturday and Sundays'
  },
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX - MORE\\u0026 Life Edition 3.0',
    name_cn: 'PadelX - MORE\\u0026 Life Edition 3.0',
    description_en: "Receipt for points registration at concierge in HKRI Taikoo Hui.\\n\\nPadel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!",
    description_cn: '消费小票可积分（请至兴业太古汇礼宾台）\\n\\n板式网球结合网球、壁球、羽毛球和乒乓球的特点，是一项新兴的运动。它于专门的板式网球场上进行。\\n\\n板式网球在世界上迅速发展，有三个主要原因：\\n\\n- 简单易学，学
习曲线高。\\n- 它是一项社交运动，同一时间有四个人参与。\\n- 它非常精彩有趣！\\n\\n订场费用已含场地使用，球拍和球。我们还提供教练指导、培训课程、团建或商业活动等服务，欢迎添加企业微信客服进行预约及咨询。今天就加入板式网球吧！',
    rules_en: 'Receipt for points registration at concierge in HKRI Taikoo Hui.',
    rules_cn: '消费小票可积分（请至兴业太古汇礼宾台）',
    address_en: '789 Nanjing West Rd, HKRI Taikoo Hui, L4 Roof Garden',
    address_cn: '南京西路789号兴业太古汇L4屋顶花园',
    area_en: "Jing'An",
    area_cn: '静安区',
    latitude: 31.227433,
    longitude: 121.46343,
    late_cancellation_in_minutes: 4320,
    late_cancellation: true,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/HTH-2024-09-main-img.jpg',
    opening_at: '07:00:00',
    closing_at: '23:00:00',
    confirm_in_minutes: 5,
    min_bookable_minutes: 60,
    max_bookable_units: 3,
    unit_price: 500,
    business_hours: '07:00 to 23:00, Monday to Sunday'
  },
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX @ Sifec',
    name_cn: 'PadelX @ Sifec',
    description_en: "NOTE: Rackets and balls available all time range. Children below the age of 16 are not permitted to enter this venue.\\n\\nPadel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!",
    description_cn: "NOTE: 我们的场地提供球和球拍，14岁以下儿童不允许进入此球场。
    板式网球结合网球、壁球、羽毛球和乒乓球的特点，是一项新兴的运动。它于专门的板式网球场上进行。
    板式网球在世界上迅速发展，有三个主要原因：
    - 简单易学，学习曲线高。
    - 它是一项社交运动，同一时间有四个人参与。
    - 它非常精彩有趣！
    我们可根据需求提供指导和教练培训课程。今天就加入板式网球吧！",
    rules_en: 'When you finish, please return the equipment to the lockers.',
    rules_cn: '离场时请将设备放回储物柜。',
    address_en: 'No.652 Changshou Road, Building F, 11th floor, enter from the gate of Chuangxiang Tower Park, No.100 YeJiazhai Road',
    address_cn: '长寿路652号F栋楼11层，要从叶家宅路100号创享塔园区门口进来',
    area_en: 'Putuo',
    area_cn: '普陀区',
    latitude: 31.2382469,
    longitude: 121.4324567,
    late_cancellation_in_minutes: 4320,
    late_cancellation: true,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/paldelsifecv3.jpeg',
    opening_at: '07:00:00',
    closing_at: '22:00:00',
    confirm_in_minutes: 8,
    min_bookable_minutes: 60,
    max_bookable_units: 3,
    unit_price: 240.0,
    business_hours: '9:00 to 22:00, Saturday and Sundays'
  },
  {
    name_en: 'PadelX @ Anken',
    name_cn: 'PadelX @ 安垦',
    city_en: 'Shanghai',
    city_cn: '上海',
    description_en: "If the court cannot be used due to weather conditions, bookings can be rescheduled for free.  Please contact 186 0168 2598\\n\\nPadel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!",
    description_cn: "如因天气原因无法如期使用场地，可免费更改预约时间。 联系电话：186 0168 2598\\n\\n板式网球结合网球、壁球、羽毛球和乒乓球的特点，是一项新兴的运动。它于专门的板式网球场上进行。\\n\\n板式网球在世界上迅速发展，有三个主要原因：\\n\\n- 简单易学，学习曲线高。\\n- 它是一项社交运动，同一时间有四个人参与。\\n- 它非常精彩有趣！\\n\\n我们的场地提供球拍和球，并可根据需求提供指导和教练培训课程。今天就加入板式网球吧！",
    rules_en: 'When you finish, please return the equipment to the lockers.',
    rules_cn: '离场时请将设备放回储物柜。',
    address_en: 'Anyuan Road 285, 6 Floor',
    address_cn: '安远路285号2幢1层GL3',
    area_en: "Jing'An",
    area_cn: '静安区',
    latitude: 31.239679,
    longitude: 121.443726,
    late_cancellation_in_minutes: nil,
    late_cancellation: false,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/padelx-cover-anken.jpg',
    opening_at: '06:30:00',
    closing_at: '21:30:00',
    confirm_in_minutes: 8,
    min_bookable_minutes: 60,
    max_bookable_units: 2,
    unit_price: 200,
    business_hours: '6:30 to 21:30, Saturday and Sundays'
  },
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX - Unicity Vanke',
    name_cn: 'PadelX - 天空万科',
    description_en: "Note:\\n***Add Customer Service: padelchina\\nto reserve your complimentary rackets and balls***\\n\\nPadel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!",
    description_cn: "Note:\\n*** 如需免费球拍和球，请提前联系客服padelchina预订***\\n\\n板式网球结合网球、壁球、羽毛球和乒乓球的特点，是一项新兴的运动。它于专门的板式网球场上进行。\\n\\n板式网球在世界上迅速发展，有三个主要原因：\\n\\n- 简单易学，学习曲线高。\\n- 它是一项社交运动，同一时间有四个人参与。\\n- 它非常精彩有趣！\\n\\n我们的场地提供
球拍和球，并可根据需求提供指导和教练培训课程。今天就加入板式网球吧！",
    rules_en: 'Play Safely',
    rules_cn: '安全地玩',
    address_en: 'Zhulu West Road 1348, UNICITY Vanke Sky City (Zhulu West Road), 4th Floor',
    address_cn: '青浦区崧泽大道2229弄66号上海天空万科广场L1-45a',
    area_en: 'Qingpu',
    area_cn: '青浦区',
    latitude: 31.1771,
    longitude: 121.253704,
    late_cancellation_in_minutes: nil,
    late_cancellation: false,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/padelx-venue-2022-1013-3.jpg',
    opening_at: '07:00:00',
    closing_at: '22:00:00',
    confirm_in_minutes: 8,
    min_bookable_minutes: 60,
    max_bookable_units: 2,
    unit_price: 400,
    business_hours: '7:00 to 22:00, Saturday and Sundays'
  },
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX @ Jiuguang',
    name_cn: 'PadelX @ 久光中心',
    description_en: "If the court cannot be used due to weather conditions, bookings can be rescheduled for free. \\n\\nPadel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!",
    description_cn: "如因天气原因无法如期使用场地，可免费更改预约时间。 \\n\\n板式网球结合网球、壁球、羽毛球和乒乓球的特点，是一项新兴的运动。它于专门的板式网球场上进行。\\n\\n板式网球在世界上迅速发展，有三个主要原因：\\n\\n- 简
单易学，学习曲线高。\\n- 它是一项社交运动，同一时间有四个人参与。\\n- 它非常精彩有趣！\\n\\n我们的场地提供球拍和球，并可根据需求提供指导和教练培训课程。今天就加入板式网球吧！",
    rules_en: 'When you finish, please return the equipment to the lockers.',
    rules_cn: '订场后请联系客服。\\n\\n离场时请将设备放回原处。',
    address_en: 'Jiuguang 6F',
    address_cn: '大宁久光中心6L',
    area_en: "Jing'An",
    area_cn: '静安区',
    latitude: 31.27578,
    longitude: 121.45051,
    late_cancellation_in_minutes: nil,
    late_cancellation: false,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/padelx-jiuguang-1.png-Default',
    opening_at: '07:00:00',
    closing_at: '22:00:00',
    confirm_in_minutes: 8,
    min_bookable_minutes: 60,
    max_bookable_units: 2,
    unit_price: 400,
    business_hours: '07:00-22:00, Monday to Sunday'
  },
  {
    city_en: 'Shanghai',
    city_cn: '上海',
    name_en: 'PadelX @XijiaoBailian',
    name_cn: 'PadelX @百联西郊',
    description_en: "Padel Tennis is a combination of the best elements of tennis, squash, badminton and table tennis. All put into one. It's played on a court specially built for Padel Tennis.\\n\\nPadel Tennis is the world's fastest growing sport for 3 main reasons. \\n- It's very simple and the learning curve is high.\\n- It's a very social sport played among four people and most importantly,\\n- It's a lot of fun!,
    description_cn:板式网球在世界上迅速发展，有三个主要原因：\\n\\n- 简单易学，学习曲线高。\\n- 它是一项社交运动，同一时间有四个人参与。\\n- 它非常精彩有趣！\\n\\n订场费用已含场地使用，球拍和球。我们
    还提供教练指导、培训课程、团建或商业活动等服务，欢迎添加企业微信客服进行预约及咨询。今天就加入板式网球吧！",
    rules_en: "Confirm your reservation with the venue manager o contacting Padelx Customer Service.",
    rules_cn: "与场馆经理确认您的预订或联系Padelx客服",
    address_en: '5th floor of Xijiao Bailian Shopping Center, No. 88 Xianxia West Road',
    address_cn: '仙霞西路88号百联西郊购物中心5楼停车场',
    area_en: 'Changning',
    area_cn: '长宁区',
    latitude: 31.210913,
    longitude: 121.365957,
    late_cancellation_in_minutes: nil,
    late_cancellation: false,
    advanced_bookable_days: 7,
    image: 'https://assets-sh-padelx.shanghaipadel.com/padelx-bailian-2024.jpeg',
    opening_at: '07:00:00',
    closing_at: '24:00:00',
    min_bookable_minutes: 60,
    max_bookable_units: 3,
    unit_price: 200,
    business_hours: '07:00 to 24:00, Monday to Sunday'
  }

]


venues_data.each do |venue_data|
  v = Venue.create(venue_data)

  rand(1..3).times do |i|
    Court.create({
      venue_id: v.id,
      court_size: [ 'single', 'double' ].sample,
      court_type: [ 'outdoor', 'indoor' ].sample,
      name_en: "Court #{v.id} - #{i}",
      name_cn: "Court #{v.id} - #{i}"
    })
  end
end

p "#{Venue.count} venues, #{Court.count} courts, #{Amenity.count} amenities #{Customer.count} customers, created"
