### Inheritance

```ruby
class Tree
	attr_reader :height
	def initialize
		@height = 0
	end
end

class OrangeTree < Tree
end

class AppleTree < Tree
end
```

+++

```ruby
orange_tree = OrangeTree.new
orange_tree.height # 0
```

+++

```ruby
class Animal
	def initialize(fav_food)
		@fav_food = fav_food
	end

	def eat(food)
		if food == @fav_food
			p "eats #{food}"
		else
			p "#{food} rejected"
		end
	end
end
```

+++

```ruby
class Cat < Animal
end

cat = Cat.new("fish")
cat.eat("fish") # "eats fish"
cat.eat("tomato") # "tomato rejected"
```

---

### Composition

```ruby
class Wheel
end

class Car
	attr_reader :wheels
	def initialize
		@wheels = [Wheel.new,Wheel.new,Wheel.new,Wheel.new]
	end
end
```