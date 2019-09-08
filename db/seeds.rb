Checkout.destroy_all
Book.destroy_all
Category.destroy_all
Author.destroy_all
User.destroy_all

#Categories#
horror = Category.create(name: "Horror")
mystery = Category.create(name: "Mystery")
action = Category.create(name: "Action")

#Authors#
rick = Author.create(name: "Rick Riordan")
dick = Author.create(name: "Goosebump creator")
lick = Author.create(name: "Conan O' Brian")

#Books#
tm = Book.create(title: "Tardis Manual", category_id: mystery.id, author_id: lick.id)
gb = Book.create(title: "Goosebumps", category_id: horror.id, author_id: dick.id)
pj = Book.create(title: "Percy Jackson", category_id: action.id, author_id: rick.id)

#Users#
the_doctor = User.create(name: "The Doctor")
benny = User.create(name: "Benny")
kevin = User.create(name: "Kevin")
