require './contact.rb'

class CRM

  def initialize(name = "CRM")
    puts "Okay, this CRM has the name " + name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end

  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit # abort("Bye") How to exit a Ruby program
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name: first_name, last_name: last_name, email: email, note: note)
  end

  def modify_existing_contact

    puts "Contact id please"
    id = gets.to_i

    puts "What do you wanna update?"
    attribute = gets.chomp.to_sym

    puts "Whats the new #{attribute}"
    value = gets.chomp

    contact = Contact.find(id)

    contact.update(attribute => value)

    display_contact(contact)

  end

  def delete_contact

    puts "Provide contact ID please"
    id = gets.to_i
    contact = Contact.find(id)
    contact.destroy

    display_all_contacts
  end

  def display_all_contacts
    puts "List of contacts"
    puts  "---------------"
    Contact.all.each do |contact|
      display_contact(contact)
    end
    puts  "---------------"

  end

  def search_by_attribute

    puts '[1] Search by First name'
    puts '[2] Search by Last name'
    puts '[3] Search by email'
    puts '[4] Exit'
    puts 'Enter a number: '

    search_by = gets.to_i
    case search_by
    when 1
      attribute = "first_name"
    when 2
      attribute = "last_name"
    when 3
      attribute = "email"
    when 4 then exit
    end

    attribute = attribute.to_sym

    puts  "Type the search term"
    value = gets.chomp

    contact = Contact.find_by(attribute => value)

    if contact
      display_contact(contact)
    else
      puts
      puts " -- No records found --"
      puts
    end

  end

  private

  def display_contact(contact)
    puts
    puts " Name: #{contact.full_name}"
    puts " email: #{contact.email}"
    puts " Note: #{contact.note}"
    puts
  end

end

at_exit do
  ActiveRecord::Base.connection.close
end

# contact1 = Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# contact2 = Contact.create('Alfonso', 'Rubel', 'alnfonso@mail.com', 'cooks a lot')
# contact3 = Contact.create('Mauricio', 'Nadal', 'nadal@mail.com', 'plays soccer')
# contact4 = Contact.create('Meliza', 'Pineda', 'meliza@mail.com', 'cleans a lot')
#
# uno = CRM.new
#
# uno.main_menu
