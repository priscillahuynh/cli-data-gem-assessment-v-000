class Meetup::Cli
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def call
    puts "Welcome to #{self.name}"
    main_menu
  end

  def main_menu
    puts "Type 'list' for a list of meetups in San Francisco"
    # puts "Type a number to see details of a meetup event"
    puts "Type 'exit' to exit the program"
    input = gets.strip
    if input.downcase == "list"
      list_events
    elsif input.downcase == "exit"
      puts "Come back again to check out new meetups near you."
    else
      invalid
      main_menu
    end
  end
end
