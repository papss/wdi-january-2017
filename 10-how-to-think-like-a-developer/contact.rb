class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  @@next_id = 1000

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, note)
    # 1. Initialize a new Contact with a unique ID
    new_contact = self.new(first_name, last_name, email, note)

    # 2. Add the new Contact to the list of all contacts
    @@contacts << new_contact

    # 3. Return the newly created Contact
    new_contact
  end

  def initialize(first_name, last_name, email, note)
    @id = @@next_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    # 3. Increment the next unique ID
    @@next_id += 1
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # Reader - provided by attr_accessor
  # def first_name
  #   @first_name
  # end

  # Writer - provided by attr_accessor
  # def first_name=(new_name)
  #   @first_name = new_name
  # end

end
