class Timer
  @@seconds = 0
  @@minutes = 0
  @@hours = 0
  def seconds=(s)
    if s >= 60
      @@minutes = s/60
      @@seconds = s%60
      if @@minutes >= 60
        @@hours = @@minutes/60
        @@minutes = @@minutes%60
      end
    else
      @@seconds = s
    end
  end

  def seconds
    @@seconds
  end

  def time_string
    return ("%02d" % @@hours).to_s + ":" + ("%02d" % @@minutes).to_s + ":" + ("%02d" % @@seconds).to_s
  end
end
