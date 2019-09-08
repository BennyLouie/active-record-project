class CommandLineInteface

    def run
        puts "Welcome to the Library. A basic database storage for many of the most popular books."
        puts "Please enter the title of the book you are searching for."
        book_title = "#{gets.chomp}"
        Book.find_by(title: book_title)
    end
end

cli = CommandLineInteface.new
cli.run
