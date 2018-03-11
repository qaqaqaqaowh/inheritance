### Modules
```ruby
module SomeModule
	def something
		p "something"
	end
end
```

+++

```ruby
module Maths
	def sum(val1,val2)
		return val1 + val2
	end
end
```

Using the keyword `include`

```ruby
class Something
	include Maths
end
```

---

### Private and Public

+++

### What's the problem?

```ruby
class Character
	def initialize
		@lives = 10
	end

	def add_live
		@lives += 1
	end
end
```

+++

### How to fix it?

```ruby
class Character
	def initialize
		@lives = 10
	end

	def cheat_code(code)
		add_live if code == "I need help"
	end

private
	def add_live
		@lives += 1
	end
end
```

---

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

---

### Encapsulation

```ruby
def BankAccount
	attr_reader :password, :amount
	def initialize(password)
		@password = password
		@amount = 0
	end
end

def Human
	def initialize(password)
		@bank_account = BankAccount.new(password)
	end

	def check_amount(password)
		@bank_account.amount if @bank_account.password == password
	end
end
```

+++

```ruby
def BankAccount
	def initialize(password)
		@password = password
		@amount = 0
	end

	def check_amount(password)
		@password == password ? @amount:"Wrong password"
	end
end

def Human
	def initialize(password)
		@bank_account = BankAccount.new(password)
	end

	def check_bank_amount(password)
		p @bank_account.check_amount(password)
	end
end
```

+++

[Extra material](https://github.com/qaqaqaqaowh/inheritance/blob/master/extra/encapsulation.rb)

---

### Duck Typing
Quack!

+++

```ruby
def Tree
	def initialize
		@height = 0
	end

	def grow!
		@height += 1
	end
end

def Human
	def initialize
		@height = 0
		@weight = 0
	end

	def grow!
		@height += 1
		@weight += 2
	end
end
```

+++

```ruby
things = [Human.new, Tree.new]
things.each do |thing|
	thing.grow!
end
```