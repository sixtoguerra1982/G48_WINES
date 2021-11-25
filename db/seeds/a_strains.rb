100.times do |i|
    Strain.create!(name: "Cepa #{i+1}")
    puts "Cepa #{i+1}"
end