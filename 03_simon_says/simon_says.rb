def echo(s)
  return s
end

def shout(s)
  return s.upcase
end

def repeat(*args)
  case args.size
  when 1
    return args[0] + " " + args[0]
  when 2
    ans = ""
    args[1].times do
      ans = ans + args[0] + " "
    end
    return ans[0..ans.length-2]
  end
end

def start_of_word(a, b)
  return a[0..b-1]
end

def first_word(s)
  s = s.split
  return s[0]
end

def titleize(s)
  no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  s = s.split(" ")
  ans = ""
  s.each {|x|
    if no_cap.include? x
      ans = ans + x + " "
    else
      ans = ans + x.capitalize + " "
    end}
  ans = ans[0].capitalize + ans[1..ans.length-1]
  return ans[0..ans.length-2]
end
