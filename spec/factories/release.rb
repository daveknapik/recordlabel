Factory.define :release do |f|
  f.title 'Endless Summer'
  f.description 'Everyone loves Fennesz'
  f.sequence(:catalogue_number) {|n| "TO:#{n}"}
  f.association :artist
end