def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  #this line has a bug, so fix it
  #if choice.include =~ "0" || choice.include =~ "1"
  #Use of RegExp(regular expressions)
  if /choice/.match('choice') #=> #<MatchData "choice">
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy. Onto the next room."
    room_of_light
  else
    dead("You greedy bastard!")
  end
end

#Function is bear_room.
def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "How are you going to move the bear?"
  bear_moved = false

#A while loop running until block of code is false
  while true
    print "> "
    choice = $stdin.gets.chomp
    if choice == "take honey"
      dead("The bear looks at you then slaps your face off")
#true && !false = true. Script will run and bear will move
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go thru"
      #Changing statement to true
      bear_moved = true
      #true(open door) && true = true. You will enter gold room
    elsif choice == "open door" &&bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

#If you flee, you will start over beginning of game
  if choice.include? "flee"
    room_of_light
#If you type anything with the word Head, you will end up Dead
  elsif choice.include? "head"
    dead("Well, that was tasty!")
#If you input anything else, the cthulhu room will restart
  else
    cthulhu_room
  end
end

def room_of_light
  puts "Here is the room of Light."
  puts "You encountered God...He will bring you to salvation."
  puts "Do you flee or say Yes to salvation?"
  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    dead("He sees you trying to leave and you die of heart attack.")
  elsif choice.include? "yes"
    puts "You won the game! Good job!"
    exit (0)
  else
    room_of_light
  end
end

#Defines why as punctual and "Good Job!" whenever you die
#exits the game
def dead(why)
  puts why, "Good job!"
  exit (0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  #If your choice is left, you will enter the bear room
  if choice == "left"
    bear_room
    #If choice is right, you will enter cthulhu room
  elsif choice == "right"
    cthulhu_room

    #If you type anything ELSE, you will starve!
  else
    dead("You stumble around the room until you starve.")
  end
end

#This starts the "start" function, which begins the game
start
