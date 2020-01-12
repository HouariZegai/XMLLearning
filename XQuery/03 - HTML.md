# XQuery FLOWR + HTML

## Examples:
* list all the book-titles in our bookstore in an HTML list:

        <ul>
        {
            for $x in doc("books.xml")/bookstore/book/title
            order by $x
            return <li>{$x}</li>
        }
        </ul>

* Previous example but we wanna show the data only (content of tag):

        <ul>
        {
            for $x in doc("books.xml")/bookstore/book/title
            order by $x
            return <li>{data($x)}</li>
        }
        </ul>