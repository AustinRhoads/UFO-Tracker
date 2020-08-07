users = {
    "dana" => {
        :username => "Scully",
        :email => "skeptic@fbi.com",
        :password => "dana"
    },

    "fox" => {
        :username => "Mulder",
        :email => "basement@fbi.com",
        :password => "fox"
    },

    "admin" => {
        :username => "Archiver",
        :email => "austinrrhoads@ymail.com",
        :password => "admin"
    }
}

users.each do |x, hash|
x = User.create(hash)  
end


encounters = {

"case11ds" => {
    :kind => 3,
    :date => "07-11-77",
    :description => "on top of devils tower we heard some music and some strange lights.",
    :military_involved => true
},

"case11fm" => {
    :kind => 3,
    :date => "07-11-77",
    :description => "after communicating with extraterrestrial beings via a 5 tone melody we made contact with ET",
    :military_involved => true
},

"roswell" => {
    :kind => 3,
    :date => "07-04-47",
    :description => "in mid 1947, civilians spotted a 'flying disc' over roswell nm. later the United states army air force would state that it was only a military weather baloon.",
    :military_involved => true
}

}

encounters.each do |x, hash|
x = Encounter.create(hash)
end

dana = User.all[0]
dana.encounters << Encounter.all[0]
fox = User.all[1]
fox.encounters << Encounter.all[1]
admin = User.all[2]
admin.encounters << Encounter.all[2]











# case11 = MassEncounter.create
# case11ds = Encounter.all[0]
# case11fm = Encounter.all[1]
# case11.encounters << case11ds
# case11.encounters << case11fm