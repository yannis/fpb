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
  }
]

news = [
  {
    title: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    published_on: Date.today
  }
]

Author.delete_all
Author.transaction do
  for author in authors
    Author.create! first_name: author[:first_name], last_name: author[:last_name], email: author[:email]
  end
end

artworks = [
  {
    title: "Benthic foraminifers",
    author_id: Author.where(last_name: "Obadia").first.id,
    picture_name: "benthic_forams"
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
      picture: File.open("#{Rails.root}/db/seed_files/#{artwork[:picture_name].downcase}.jpg")
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
