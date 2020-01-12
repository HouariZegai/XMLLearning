# FLWOR
**FLWOR** = **F**or, **L**et, **W**here, **O**rder by, **R**eturn
* For: selects a sequence of nodes
* Let: binds a sequence to a variable
* Where: filters the nodes
* Order by: sorts the nodes
* Return: what to return (gets evaluated once for every node)

## Example:
* Select all the title elements under the book elements that are under the bookstore element that have a price element with a value that is higher than 30:

        for $elem in doc("books.xml")/bookstore/book
        where $elem/price > 30
        return $elem/title
* Sort the above result:

        for $elem in doc("books.xml")/bookstore/book
        where $elem/price > 30
        order by $elem/title
        return $elem/title