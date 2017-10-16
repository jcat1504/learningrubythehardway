class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new (["Happy birthday to you",
  "I don't want to get sued",
  "So I'll stop right there"])

  bulls_on_parade = Song.new(["They rally around tha family,
    With pockets full of shells"])

  #man_out_of_you = Song.new(["Let's get down to business",
    #{}"To defeat...the Huns"])

    #put lyrics in a separate variable,
    #then pass that variable to a class instead
man_out_of_you_lyrics = ["Let's get down to business",
"To defeat...The Huns"]
man_out_of_you = Song.new(man_out_of_you_lyrics)
man_out_of_you.sing_me_a_song()

cant_wait_to_be_king = Song.new(["I'm going to be the mane event",
  "Like no king was before"])

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()
man_out_of_you.sing_me_a_song()
cant_wait_to_be_king.sing_me_a_song()
