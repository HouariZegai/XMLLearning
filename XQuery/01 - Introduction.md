# Introduction
## Examples:
* Select all titles:

        doc('books.xml')/bookstore/book/title
* Select all the book elements under the bookstore element that have a price element with a value that is less than 30:

        doc('books.xml')/bookstore/book[price < 30]