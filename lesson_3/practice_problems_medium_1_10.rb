def foo(param = "no")
  "yes"
end
# => "yes"

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# => "yes"


bar(foo)  # bar ("yes")
# => "no"