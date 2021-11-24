30.times do |x|
    Oenologist.create!(name: "Enologo #{x+1}",nation: "xxxxxxx", age: x+1 * x)
    puts "enologo nro #{x+1}"
end