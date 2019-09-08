class User < ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts

    def checkout_book(book, date)
        if Checkout.exists?(user_id: self.id, book_id: book.id)
            Checkout.find(user_id: self.id, book_id: book.id)
        else
            Checkout.create(user_id: self.id, book_id: book.id, due_date: date, returned: false)
        end
    end

    def return_book(book)
        the_book = Checkout.all.find do |checkout|
            checkout.book_id == book.id && user_id == self.id
        end
        the_book.update_attributes(:returned => true)
    end

    def checked_out_books
        checked_out = Checkout.all.select do |checkout|
            checkout.returned == false
        end
        checked_out.select do |checkout|
            checkout.user_id == self.id
        end
    end

    def returned_books
        returned = Checkout.all.select do |checkout|
            checkout.returned == true
        end
        returned.select do |checkout|
            checkout.user_id == self.id
        end
    end
end