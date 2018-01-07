def add(a, b)
  return a + b;
end

def subtract(a, b)
  return a - b;
end

def sum(a)
  ans = 0;
  a.each {|x| ans = ans + x}
  return ans;
end

def multiply(a, b)
  return a * b;
end

def power(a, b)
  return a^b;
end

def factorial(a)
  ans = 1;
  if(a == 0)
    return ans;
  end
  a.times do
    ans = ans * i;
  end
  return ans
end
