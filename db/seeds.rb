# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Actor.create(name: 'Samuel L. Jackson')
a2 = Actor.create(name: 'John Travolta')
a3 = Actor.create(name: 'Malcolm McDowell')
d1 = Director.create(name: 'Quentin Tarantino')
d2 = Director.create(name: 'Stanley Kubrick')
g1 = Genre.create(name: 'Accion')
g2 = Genre.create(name: 'Fantasia')
t1 = Tape.create(name: 'Pulp Fiction', director: d1)
t2 = Tape.create(name: 'A Clockwork Orange', director: d2)
TapeGenre.create(tape: t1, genre: g1)
TapeGenre.create(tape: t2, genre: g2)
TapeActor.create(tape: t1, actor: a1)
TapeActor.create(tape: t2, actor: a2)
c = Client.create(name: 'André Kraüss', email: 'andre@example.com', phone: '78009645', address: 'test address')
ClientGenre.create(client: c, genre: g1)
ClientGenre.create(client: c, genre: g2)
ClientDirector.create(client: c, director: d1)
ClientDirector.create(client: c, director: d2)
ClientActor.create(client: c, actor: a1)