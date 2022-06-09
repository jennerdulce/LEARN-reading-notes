class Book
    attr_accessor :title, :author, :page

    def initialize(title, author='anonymous')
        @title = title
        @author = author
        @page = 0
    end

    def turn_page num
        @page = num
    end
end


def addSum (num1, num2)
    num1 + num2
end