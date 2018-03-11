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

def Human < Animal
end

def Cat < Animal
end
```

---

### Composition