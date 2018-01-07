def pl(s)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include? s[0]
    return s + "ay"
  else
    done = false
    first = ""
    n = 0
    while(!done)
      if !(vowels.include? s[n])
        n+=1
      else
        done = true
      end
    end
    if(s.include? "qu")
      i = s.index("qu")
      return s[i+2..s.length-1] + s[0..i+1] + "ay"
    end
    return s[n..s.length-1] + s[0..n-1] + "ay"
  end
end

def translate(s)
  s = s.split
  ans = ""
  s.each {|word|
    ans += pl(word) + " "
  }
  return ans[0..ans.length-2];
end
