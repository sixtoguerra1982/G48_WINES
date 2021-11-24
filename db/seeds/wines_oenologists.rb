wines = Wine.all
oenologist = Oenologist.all
notes = [1,2,3,4,5,6,7,8,9,10]
20.times do |x|
    WinesOenologist.create!(wine: wines.sample, oenologist: oenologist.sample, note: notes.sample)
end