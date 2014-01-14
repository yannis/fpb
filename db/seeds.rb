# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

committee_members = [
  {
    title: "Prof.",
    first_name: 'Jan',
    last_name: 'Pawlowski',
    email: "jan.pawlowski@unige.ch",
    function: "Chairman",
    affiliation: "University of Geneva"
  },
  {
    title: "Dr.",
    first_name: 'Maria',
    last_name: 'Holzmann',
    email: "maria.holzmann@unige.ch",
    function: "Scientific advisor",
    affiliation: "University of Geneva"
  }
]

donations = [
  {
    name: "Commune De Vandoeuvres",
    location: "Genève"
  },
  {
    name: "Commune De Thônex",
    location: "Genève"
  },
  {
    name: "Mme A. Baldanza",
    location: "Perugia"
  },
  {
    name: "Mme R. Barchietto",
    location: "Genève"
  },
  {
    name: "Mme H. Broennimann-Iselin",
    location: "Berne"
  },
  {
    name: "M. M. P. Broennimann",
    location: "Genève"
  },
  {
    name: "M. A. Burdet",
    location: "Genève"
  },
  {
    name: "M. P. De Castro",
    location: "Naples"
  },
  {
    name: "Mme G. Ciarapica",
    location: "Perugia"
  },
  {
    name: "Mme S. Cirilli",
    location: "Perugia"
  },
  {
    name: "M. J.-P. Debena Y",
    location: "Angers"
  },
  {
    name: "M. A. Deshusses",
    location: "Genève"
  },
  {
    name: "M. M. Reck / Esperta S.a.",
    location: "Locarno"
  },
  {
    name: "M. M. Groppi / Excosa S.a.",
    location: "Genève"
  },
  {
    name: "M. et Mme Ch. Fabjan",
    location: "Genève"
  },
  {
    name: "M. G. Gorin",
    location: "Genève"
  },
  {
    name: "M. J. Malna Ti",
    location: "Genève",
  },
  {
    name: "Mme R. Martini",
    location: "Genève"
  },
  {
    name: "M. R. Nagy",
    location: "Genève"
  },
  {
    name: "Mme M. Nocchi",
    location: "Perugia"
  },
  {
    name: "Mme M. Ody",
    location: "Genève"
  },
  {
    name: "M. H. Oertli",
    location: "Pau"
  },
  {
    name: "M. L. Passeri",
    location: "Ferugia"
  },
  {
    name: "M. G. Parisi",
    location: "Perugia"
  },
  {
    name: "M. N. Pellaud et Mme Nuti",
    location: "Mies"
  },
  {
    name: "M. G. Pialli",
    location: "Perugia"
  },
  {
    name: "Mme M. Pittard-zweifel",
    location: "Bale"
  },
  {
    name: "M. R. Rettori",
    location: "Perugia"
  },
  {
    name: "Mme K. Von Salis",
    location: "Zurich"
  },
  {
    name: "M. G. Sanderson",
    location: "Tulsa / Usa"
  },
  {
    name: "M. B. Schwizer",
    location: "Genève"
  },
  {
    name: "M. M.-A. Conrad",
    location: "Genève"
  },
  {
    name: "Mme R. Serandrei",
    location: "Venise"
  },
  {
    name: "M. Mme G. Stampfli",
    location: "Lausanne"
  },
  {
    name: "M. Mme G. Stickel",
    location: "Genève"
  },
  {
    name: "M. Mme H. Thurnherr-gaulis",
    location: "Genève"
  },
  {
    name: "M. K. Towe",
    location: "Washington D. C. / Usa"
  },
  {
    name: "Mme A. Voegelin",
    location: "Bale"
  },
  {
    name: "M. R. Wernli",
    location: "Genève"
  },
  {
    name: "Mme L. Zaninetti",
    location: "Genève"
  },
  {
    name: "M. A. Poisson",
    location: "Genève"
  },
  {
    name: "M. G. Piovano",
    location: "Genève"
  },
  {
    name: "M. E. Nardini",
    location: "Genève"
  }
]

awards = [
  {
    laureate: "Dr Lennart Jan de Nooijer",
    title: "Foraminifera promote calcification by elevating their intracellular pH",
    awarded_on: "2010-01-01"
  },
  {
    laureate: "Oliver Friedrich",
    title: "Biological and environmental effects of Late Cretaceous benthic foraminiferal
stagle isotope compositions",
    awarded_on: "2006-01-01"
  },
  {
    laureate: "Petra Heinz",
    title: "Laboratory feeding experiments: response of deep-sea benthic foraminifera to simulated phytoplankton pulses",
    awarded_on: "2001-01-01"
  },
  {
    laureate: "Edouard G. Reinhardt",
    title: "Paleoenvironmental Evolution of the Inner Basin of the Ancient Harbor at Caeserea Maritima, Israel - Foraminiferal and Sr Isotopic Evidence",
    awarded_on: "1997-01-01"
  }
]

authors = [
  {
    first_name: "Cyril",
    last_name: "Obadia"
  },
  {
    first_name: "Ivan",
    last_name: "Voltsky"
  },
  {
    first_name: "Sam",
    last_name: "Bowser"
  },
  {
    first_name: "Laura",
    last_name: "Von Rosk"
  },
  {
    first_name: "Maria",
    last_name: "Holzmann"
  },
  {
    first_name: "Wisława",
    last_name: "Szymborska",
    description: "Nobel Prize in Literature 1996"
  }
]

news = [
  {
    title: "FPB in Chile",
    content: "The FPB will sponsor the session “New classification of Foraminifera: bridging molecules and morphology” during the <a href='http://www2.udec.cl/forams2014'>International Symposium on Foraminifera 2014</a>, in Concepcion, Chile, on January 21st, 2014.",
    published_on: Date.today
  }
]

Author.delete_all
Author.transaction do
  for author in authors
    Author.create! first_name: author[:first_name], last_name: author[:last_name], email: author[:email], description: author[:description]
  end
end

artworks = [
  {
    title: "Benthic foraminifers",
    author_id: Author.where(last_name: "Obadia").first.id,
    picture_name: "benthic_forams"
  },
  {
    title: "Undetermined Saccamminid WS07-SL_sp2, the White Sea",
    author_id: Author.where(last_name: "Voltsky").first.id,
    picture_name: "saccammina"
  },
  {
    title: "Cribroelphidium subarcticum on red algae, the White Sea",
    author_id: Author.where(last_name: "Voltsky").first.id,
    picture_name: "subarcticum"
  },
  {
    title: "Neoprotelphidium niveum, the White Sea",
    author_id: Author.where(last_name: "Voltsky").first.id,
    picture_name: "neoprotelphidium"
  },
  {
    title: "Astrammina rara",
    author_id: Author.where(last_name: "Von Rosk").first.id,
    picture_name: "astrammina"
  },
  {
    title: "Notodendrodes antarkticos",
    author_id: Author.where(last_name: "Von Rosk").first.id,
    picture_name: "notodendrodes"
  },
  {
    title: "Silver saccammina",
    author_id: Author.where(last_name: "Von Rosk").first.id,
    picture_name: "silver_saccammina"
  },
  {
    title: "Astrammina triangularis",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "astrammina_triangularis"
  },
  {
    title: "Cornuspira antarctca",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "cornuspira_antarctca_2"
  },
  {
    title: "Cornuspira antarctca on paleontology slide",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "cornuspira_antarctca"
  },
  {
    title: "Crithionina delacai",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "crithionina_delacai"
  },
  {
    title: "Crithionina",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "crithionina"
  },
  {
    title: "Gromia",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "gromia"
  },
  {
    title: "Notodendrodes Antarctikos",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "notodendrodes_antarctikos"
  },
  {
    title: "Notodendrodes hyalinosphaira",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "notodendrodes_hyalinosphaira"
  },
  {
    title: "Notrhabdammina",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "notrhabdammina"
  },
  {
    title: "Psammosphaera",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "psammosphaera"
  },
  {
    title: "Purgo (in situ)",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "purgo_in_situ"
  },
  {
    title: "Pyrgo, A Tribute To Warhol",
    author_id: Author.where(last_name: "Bowser").first.id,
    picture_name: "pyrgo_tribute_to_warhol"
  },
  {
    title: "The four seasons",
    author_id: Author.where(last_name: "Holzmann").first.id,
    content: "<p>When is it spring?
<br>When bumblebees brush their translucent wings
<br>and blackbirds, each a little king,
<br>in the evening of their royal gardens sing
<br>when the sea wears brilliant blue and green again
<br>and flocks of sheep graze diligently on the fen
<br>and flocks of Ammonia graze slowly on an algal lane</p>
<p>When is it summer?
<br>When golden waves pass around the fields of corn
<br>and iridescent dragonflies the swaying reed adorn
<br>when the marshlands steady green
<br>is counterpointed by the flowers sheen
<br>and shoals of nimble fishes cross the silvery sea
<br>and shoals of tiny Ammonia drift reckless in their lee</p>
<p>When is it autumn?
<br>When berries, red and black and blue
<br>emblaze the bushes with a luscious hue
<br>when beaches, ripe with stranded goods
<br>assemble seaweed and exotic woods
<br>when herds of crabs feast on the strand
<br>and herds of Ammonia lay between the grains of sand</p>
<p>When is it winter?
<br>When the vermillion evening sun
<br>is caught in the hibernal grey net that the twilight spun
<br>and stretched along the horizon between the sea and sky
<br>when northern winds the sharp-edged coldness ply
<br>then life in the sea takes a well-earned rest
<br>and all Ammonia dream, each hidden in its test</p>"
  },
  {
    title: "The Sunday protist",
    author_id: Author.where(last_name: "Holzmann").first.id,
    content: "<p>Have you ever noticed
<br>how beautiful Gromia is as a protist
<br>its body a perfect sphere
<br>its filopodes staunch and clear
<br>its tiny soul mingled with golden brown sediment
<br>and wrapped by a honey comb membrane that is utterly elegant
<br>with a pedigree that goes back to Cambrian times
<br>and Neptun grants them a home without confines
<br>theirs must be a happy life
<br>as they prosper and they thrive
</p>"
  },
  {
    title: "Foraminifera ",
    author_id: Author.where(last_name: "Szymborska").first.id,
    content: "<p>Well then, let's take the Foraminifera. 
<br>They lived, since they were, and were, since they lived. 
<br>They did what they could since they were able. 
<br>In the plural since the plural, 
<br>although each one on its own, 
<br>in its own, since in its own 
<br>small limestone shell. 
<br>Time summarized them later
<br>in layers, since layers, 
<br>without going into details, 
<br>since there's pity in the details. 
<br>And so I have before me 
<br>two views in one: 
<br>a mournful cemetery made
<br>of tiny eternal rests 
<br>or,
<br>rising from the sea, 
<br>the azure sea, dazzling white cliffs, 
<br>cliffs that are here because they are.
</p>",
    description: "from “Here: new poems” Translated from Polish by Clare Cavanagh and Stanislaw Baranczak. Houghton Mifflin Harcourt Publishing Company, 2010."
  }
]

links = [
  {
    title: "foramBarcoding: The molecular database of foraminifera",
    url: "http://forambarcoding.unige.ch"
  },
  {
    title: "The Cushman Foundation for Foraminiferal Research",
    url: "http://www.cushmanfoundation.org"
  },
  {
    title: "The Grzybowski Foundation",
    url: "http://www.gf.tmsoc.org"
  },
  {
    title: "eForams: up-to-date knowledge and resources on foraminifera",
    url: "http://eforams.org"
  }
]

CommitteeMember.delete_all
CommitteeMember.transaction do
  for committee_member in committee_members
    CommitteeMember.create! title: committee_member[:title],
      first_name: committee_member[:first_name],
      last_name: committee_member[:last_name],
      email: committee_member[:email],
      function: committee_member[:function],
      affiliation: committee_member[:affiliation],
      portrait: File.open("#{Rails.root}/db/seed_files/#{committee_member[:last_name].downcase}.jpg")
  end
end

Artwork.delete_all
Artwork.transaction do
  for artwork in artworks
    Artwork.create! title: artwork[:title],
      author_id: artwork[:author_id],
      picture: (artwork[:picture_name] ? File.open("#{Rails.root}/db/seed_files/#{artwork[:picture_name].downcase}.jpg") : nil),
      content: artwork[:content],
      description: artwork[:description]
  end
end

Donation.delete_all
Donation.transaction do
  for donation in donations
    Donation.create! name: donation[:name], location: donation[:location]
  end
end

Award.delete_all
Award.transaction do
  for award in awards
    Award.create! laureate: award[:laureate], title: award[:title], awarded_on: award[:awarded_on]
  end
end

New.delete_all
New.transaction do
  for anew in news
    New.create! title: anew[:title], content: anew[:content], published_on: anew[:published_on]
  end
end

Link.delete_all
Link.transaction do
  for link in links
    Link.create! title: link[:title], url: link[:url], description: link[:description]
  end
end
