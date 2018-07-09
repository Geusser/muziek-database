# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
songs = Song.create([
  {artist: 'Puppet', name: 'Bigger Picture', genre: 'Indie Rock',
  description: 'Een van de meest complexe nummers ooit gemaakt. Favoriete nummer.',
  album: 'Life Overseas EP', score: '0', rating: '7'},
  {artist: 'Puppet', name: 'Dynamo', genre: 'Indie rock',
    description: 'Barstend van emotie.', album: 'Life Overseas EP', score: '0', rating: '7'}])
