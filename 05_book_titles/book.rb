class Book
  attr_accessor :title
  def title=(t)
    no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
    ans = ""
    t = t.split
    t.each{|word|
      if(no_cap.include? word)
        ans += word + " "
      else
        ans += word.capitalize + " "
      end
    }
    @title = ans[0].upcase + ans[1, ans.length-2]
  end
  def title
    @title
  end
end
