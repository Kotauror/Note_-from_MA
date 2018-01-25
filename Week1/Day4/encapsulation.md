## Encapsulation

Divide programs into smaller objects and carefully define how they're interacting with each other.
- Keep public interface small;
- Divide the code into smaller pieces - title, body, display separated from roger.

```ruby
class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def title
    @title
  end

  def body
    @body
  end

  def display
    puts title()
    puts "---"
    puts body()
  end

  def say_roger_is_the_best
    puts "Roger, you're the best ever!"
  end
end
```

DIVIDE INTO:

```ruby
class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def title
    @title
  end

  def body
    @body
  end

  def display
    puts title
    puts "---"
    puts body
  end
end

class FedFan
  def say_roger_is_the_best
    puts "Roger, you're the best ever!"
  end
end
```

Dividing bank methods

```ruby
def initialize
  @date_credit
  @date_debit
end

def credit_account(date, amount)
 @date_credit
 @amount_credit
end

def debit_account(date, amount)
 @date_debit
 @amount_debit
end

def balance
  return @amount_credit - @amount_debit
end

def print_statement
  puts balance()
end
```

Dividing restaurant methods
```ruby
print_menu

add(items)
show_basket

checkout(amount)
show_basket
print_total
```
Separating classes, using two classes.
```ruby
class Maths
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

class Print
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

maths = Maths.new
answer = maths.add(2,5)

printer = Print.new
printer.print_answer(answer)
```
