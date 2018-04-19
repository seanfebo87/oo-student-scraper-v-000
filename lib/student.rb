class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    @name = studen_hash[:name]
    @location = studen_hash[:location]
    @twitter = studen_hash[:twitter]
    @linkedin = studen_hash[:linkedin]
    @gitub = studen_hash[:github]
    @blog = studen_hash[:blog]
    @profile_quote = studen_hash[:profile_quote]
    @bio = studen_hash[:bio]
    @profile_url = studen_hash[:profile_url]
  end
    
  

  def self.create_from_collection(students_array)
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end

end
