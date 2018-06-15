When we write Ruby code that's not in a class, we are working within an object called main, which is an instance of Object. The Kernel module is automatically loaded by Object, giving us access to all of its methods.

```ruby

irb 001> self
=> main
irb 002> self.class
=> Object

```
