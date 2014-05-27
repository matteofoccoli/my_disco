# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
u2 = Artist.create(name: 'U2')

Album.delete_all
rah = Album.create(title: 'Rattle and Hum',
                   cover_image: 'rah.jpg',
                   description: 'Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vestibulum id ligula porta felis euismod semper. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', release_date: Date.new(1988, 10, 10), artist: u2)

Album.create(title: 'The Joshua Tree',
             cover_image: 'tjt.jpg',
             description: 'Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', release_date: Date.new(1987, 3, 9), artist: u2)

Album.create(title: 'The Unforgettable Fire',
             cover_image: 'uf.jpg',
             description: 'Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', release_date: Date.new(1984, 10, 1), artist: u2)

Album.create(title: 'Achtung Baby',
             cover_image: 'ab.jpg',
             description: 'Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', release_date: Date.new(1991, 11, 18), artist: u2)

Song.delete_all
Song.create(title: "Helter Skelter (live)", duration: 3.07, album: rah)
Song.create(title: "Van Diemen's Land", duration: 3.05, album: rah)
Song.create(title: "Desire", duration: 2.59, album: rah)
Song.create(title: "Hawkmoon 269", duration: 6.23, album: rah)
Song.create(title: "All Along the Watchtower (live)", duration: 4.24, album: rah)
