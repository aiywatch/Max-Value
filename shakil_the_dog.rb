# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog
  while true
    puts "What do you want to do with shakil?"
    command = gets.strip.downcase
    #p command
    case command
    when "woof"
      puts "WOOF WOOF WOOF"
    when /shakil stop/
      puts "..."
    when "meow"
      puts "woof woof woof woof woof"
    when "go away"
      break
    else
      puts "woof"
      #break
    end
  end
end
 
# Run our method
shakil_the_dog