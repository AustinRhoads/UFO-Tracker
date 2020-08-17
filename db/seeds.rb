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
    :name => "case 11 Dana Scully",
    :kind => 3,
    :date => "07-11-77",
    :description => "on top of devils tower we heard some music and some strange lights.",
    :military_involved => true,
    :latitude => "",
    :longitude => ""
},

"case11fm" => {
    :name => "case 11 Fox Mulder",
    :kind => 3,
    :date => "07-11-77",
    :description => "after communicating with extraterrestrial beings via a 5 tone melody we made contact with ET",
    :military_involved => true,
     :latitude => "",
    :longitude => ""
},

"1947 UFO sightings" => {
    :name => "1947 UFO sightings",
    :date => "1947-06/07",
    :location => "Washington",
    :country => "United States",
    :description => "Several UFO sightings reported after the sighting of Kenneth Arnold.",
     :latitude => 47.7510741,
    :longitude => -120.7401385
},

"Roswell UFO crash" => {
    :name => "Roswell UFO crash",
    :date => "1947-06",
    :location => "Roswell, New Mexico",
    :country => "United States",
    :description => "States	United States Army Air Forces allegedly captured a crashed flying saucer and its alien occupants. The find was soon revealed to be a crashed balloon but regained attention since 1978 after investigation of S. T. Friedman.",
     :latitude => 33.3942655,
    :longitude => -104.5230242
},

"The Green Fireballs" => {
    :name => "The Green Fireballs",
    :date => "1948",
    :location => "",
    :country => "United States",
    :description => "Objects were reported over several United States military bases; an official investigation followed.",
     :latitude => "",
    :longitude => ""
},

"Thomas Mantell" => {
    :name => "Thomas Mantell",
    :date => "1948-01-07",
    :location => "Kentucky",
    :country => "United States",
    :description => "US Air Force sent a fighter pilot to investigate a UFO sighting over Fort Knox, Kentucky; his aircraft crashed and the pilot was killed while pursuing the UFO.",
     :latitude => 37.8393332,
    :longitude => -84.2700179
},

"Aztec, New Mexico, UFO incident" => {
    :name => "Aztec, New Mexico, UFO incident",
    :date => "1948-03-25",
    :location => "New Mexico",
    :country => "	United States",
    :description => "An alleged retrieval of a grounded UFO and its occupants from a plateau in New Mexico.",
     :latitude => 34.5199402,
    :longitude => -105.8700901
},

"Chiles-Whitted UFO encounter" => {
    :name => "Chiles-Whitted UFO encounter",
    :date => "1948-07-24",
    :location => "Alabama",
    :country => "	United States",
    :description => "Chiles and Whitted, American commercial pilots, reported that their airplane had nearly collided with a UFO.",
     :latitude => 32.3182314,
    :longitude => -86.902298
},

"Gorman dogfight" => {
    :name => "Gorman dogfight",
    :date => "1948-10-01",
    :location => "North Dakota",
    :country => "United States",
    :description => "A US Air Force pilot sighted and pursued a UFO for 27 minutes over Fargo, North Dakota.",
     :latitude => 47.55149259999999,
    :longitude => -101.0020119
},

"McMinnville UFO photograph" => {
    :name => "McMinnville UFO photograph",
    :date => "1950-05-11",
    :location => "McMinnville, Oregon",
    :country => "United States",
    :description => "A farmer took pictures of a purported flying saucer. These were the first claimed photographs of flying saucers since the coining of the term.",
     :latitude => 45.21011619999999,
    :longitude => -123.1987163
},

"Mariana UFO incident" => {
    :name => "Mariana UFO incident",
    :date => "1950-08-05 or 15",
    :location => "Great Falls, Montana",
    :country => "United States",
    :description => "The manager of Great Falls' pro baseball team took color film of two UFOs flying over Great Falls. The film was extensively analyzed by the US Air Force and several independent investigators.",
     :latitude => 47.5052849,
    :longitude => -111.3007715
},

"Lubbock Lights" => {
    :name => "Lubbock Lights",
    :date => "1951-08-25",
    :location => "Lubbock, Texas",
    :country => "United States",
    :description => "Several Lights in V-Shaped formations were repeatedly spotted flying over the city. Witnesses included professors from Texas Tech University and photographed by a Texas Tech student.",
     :latitude => 33.5778631,
    :longitude => -101.8551665
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
Encounter.all.each_with_index do |e, i|
    next if i == 0 || i == 1
        admin.encounters << e
    end
# admin.encounters << Encounter.all[0]



mass_encounters = {

    "1947 UFO sightings" => {
        :name => "1947 UFO sightings",
        :date => "1947-06/07",
        :location => "Washington",
        :country => "United States",
        :description => "Several UFO sightings reported after the sighting of Kenneth Arnold."
    },

    "Roswell UFO crash" => {
        :name => "Roswell UFO crash",
        :date => "1947-06",
        :location => "Roswell, New Mexico",
        :country => "United States",
        :description => "States	United States Army Air Forces allegedly captured a crashed flying saucer and its alien occupants. The find was soon revealed to be a crashed balloon but regained attention since 1978 after investigation of S. T. Friedman."
    },

    "The Green Fireballs" => {
        :name => "The Green Fireballs",
        :date => "1948",
        :location => "",
        :country => "United States",
        :description => "Objects were reported over several United States military bases; an official investigation followed."
    },

    "Thomas Mantell" => {
        :name => "Thomas Mantell",
        :date => "1948-01-07",
        :location => "Kentucky",
        :country => "United States",
        :description => "US Air Force sent a fighter pilot to investigate a UFO sighting over Fort Knox, Kentucky; his aircraft crashed and the pilot was killed while pursuing the UFO."
    },

    "Aztec, New Mexico, UFO incident" => {
        :name => "Aztec, New Mexico, UFO incident",
        :date => "1948-03-25",
        :location => "New Mexico",
        :country => "	United States",
        :description => "An alleged retrieval of a grounded UFO and its occupants from a plateau in New Mexico."
    },

    "Chiles-Whitted UFO encounter" => {
        :name => "Chiles-Whitted UFO encounter",
        :date => "1948-07-24",
        :location => "Alabama",
        :country => "	United States",
        :description => "Chiles and Whitted, American commercial pilots, reported that their airplane had nearly collided with a UFO."
    },

    "Gorman dogfight" => {
        :name => "Gorman dogfight",
        :date => "1948-10-01",
        :location => "North Dakota",
        :country => "United States",
        :description => "A US Air Force pilot sighted and pursued a UFO for 27 minutes over Fargo, North Dakota."
    },

    "McMinnville UFO photograph" => {
        :name => "McMinnville UFO photograph",
        :date => "1950-05-11",
        :location => "McMinnville, Oregon",
        :country => "United States",
        :description => "A farmer took pictures of a purported flying saucer. These were the first claimed photographs of flying saucers since the coining of the term."
    },

    "Mariana UFO incident" => {
        :name => "Mariana UFO incident",
        :date => "1950-08-05 or 15",
        :location => "Great Falls, Montana",
        :country => "United States",
        :description => "	The manager of Great Falls' pro baseball team took color film of two UFOs flying over Great Falls. The film was extensively analyzed by the US Air Force and several independent investigators."
    },

    "Lubbock Lights" => {
        :name => "Lubbock Lights",
        :date => "1951-08-25",
        :location => "Lubbock, Texas",
        :country => "United States",
        :description => "	Several Lights in V-Shaped formations were repeatedly spotted flying over the city. Witnesses included professors from Texas Tech University and photographed by a Texas Tech student."
    }

}


# case_files.each do |x, hash|
#    x = MassEncounter.create(hash)
#    end








# case11 = CaseFile.create
# case11ds = Encounter.all[0]
# case11fm = Encounter.all[1]
# case11.encounters << case11ds
# case11.encounters << case11fm