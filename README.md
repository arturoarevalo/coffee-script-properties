# coffee-script-properties
Adds support for native javascript properties on coffeescript classes and objects.

## Installation
```
npm install schemify
```

## Usage
This module adds functionality to the global Function namespace, so you only need to require it once. A good place would be at the beginning of your application or module:

```coffeescript
require "coffee-script-properties"
```

After this, you can start writing properties in your classes and objects.

## Properties in classes
### Getters
```coffeescript
class Rectangle
    constructor: (@width = 10, @height = 10) ->

    @getter "area", () -> @width * @height

rectangle = new Rectangle
console.log rectangle.area  # 100
```

### Setters
```coffeescript

class Person
    constructor: (@first, @last) ->

    @setter "name", (value) -> [@first, @last] = value.split " "

person = new Person
person.name = "John Doe"
console.log person.first    # John
console.log person.last     # Doe
```

### Getters and setters together
```coffeescript
class Product
    constructor: (@netPrice = 0, @taxes = 50) ->

    @property "price",
        get: -> @netPrice + @taxes
        set: (value) -> @netPrice = value - @taxes

product = new Product 100
console.log product.netPrice    # 100
console.log product.price       # 150

product.price = 500
console.log product.netPrice    # 450
console.log product.price       # 500
```

## Properties in objects
TO-DO ... working on it!
