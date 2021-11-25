100.times do |i|
    Wine.create!(name: "Vino #{i+1}")
    puts "Vino #{i+1}"
end