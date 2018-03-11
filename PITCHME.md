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
	attr_reader :size
	def initialize(wheel_size)
		@size = wheel_size
	end
end
```

+++

```ruby
class Car
	attr_reader :wheels
	def initialize(wheel_size)
		@wheels = []
		4.times do |i|
			@wheels << Wheel.new(wheel_size)
		end
	end
end
```

+++

```ruby
class Bike
	attr_reader :wheels
	def initialize(wheel_size)
		@wheels = []
		2.times do |i|
			@wheels << Wheel.new(wheel_size)
		end
	end
end
```