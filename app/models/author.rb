class Author < ActiveRecord::Base
    has_many :books

    def authored(book)
        book.update_attributes(author_id: self.id)
    end

    def authored_books
        Book.all.select do |book|
            book.author_id == self.id
        end
    end
end