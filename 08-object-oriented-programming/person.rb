class Person
  
  attr_reader :year_of_birth
  attr_writer :password, :deep_dark_secret
  attr_accessor :first_name, :last_name, :job_title

  def initialize(first_name, last_name, year_of_birth)
    @first_name = first_name
    @last_name  = last_name
    @job_title  = 'baby'
    @year_of_birth = year_of_birth
  end
  
  def full_name
    "#{ first_name } #{ last_name }"
  end
  
  def greetings
    "Hi, my name is #{ full_name }, my password is #{ password }"
  end
  
  def daydream
    @deep_dark_secret = 'I want a pizza'
  end
  
  # READERS
  #def first_name
  #  @first_name
  #end
  #
  #def last_name
  #  @last_name
  #end
  #
  #def job_title
  #  @job_title
  #end
  
  # WRITER
  #def job_title=(job_title)
  #  @job_title = job_title
  #end
end
