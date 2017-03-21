
10.times do | location |
  Property.create!(
    category: "Commercial",
    kind: "Cafes",
    livingroom: "2",
    bedroom: "5",
    kitchen: "2",
    bathroom: "7",
    parking: "Yes"

  )

end

puts "10 commercial locations created"


5.times do | location |
  Property.create!(
    category: "External",
    kind: "Hotels",
    livingroom: "2",
    bedroom: "3",
    kitchen: "1",
    bathroom: "3",
    parking: "No"

  )

end

puts "5 more commercial locations created"


10.times do | location |
  Property.create!(
    category: "External",
    livingroom: "2",
    bedroom: "3",
    kitchen: "1",
    bathroom: "3",
    parking: "No"

  )

end

puts "10 more external locations created"
