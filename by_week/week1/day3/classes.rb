class Person

  attr_reader :weight
  attr_writer :weight
  attr_accessor :eye_color, :hair_color, :shoe_size

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def height
    @height
  end

  def height=(new_height)
    @height = new_height
  end

  def speak(text)
    system("say \"#{text}\"")
  end

  def length
    height/12
  end

  def walk(miles=500)
    "I would walk #{miles} miles"
  end

  def jump(how_high=nil)
    if how_high
      "I jumped #{how_high} meters high!"
    else
      "But I want to _jump_!"
    end
  end

end

class Kid < Person

  def speak(text)
    system("say 'waah waah waah'")
  end

  def walk(steps = 0)
    "I don't walk. I _crawl_."
  end

  def crawl(feet = 2)
    "I would crawl #{feet} feet"
  end

  def jump(how_high=nil)
    if how_high && how_high > 0
      if how_high <= 2
        "Yay! I jumped #{how_high} feet!"
      else
        system("say 'waaah waah waaaaaaaaaaaaaaaaaaaaaaah'")
        "But ... I can't jump that high ..."
      end
    else
      "But I want to _jump_!"
    end
  end

end

class Mutant < Person

  attr_accessor :super_powers

  def walk(miles=500)
    "I would shamble #{miles*20} miles"
  end

end
