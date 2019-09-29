class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all? { |e|  } = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=", student_hash[:location])
    self.send("profile_url", student_hash[:profile_url])
    @@all << self
  end

  def self.create_from_collection(students_array)
   students_array.each do |student_hash|
     Student.new(student_hash)
   end
  end

  def add_student_attributes(attributes_hash)
    self.send("twitter=", attributes_hash[:twitter])
    self.send("Linkedin=", attributes_hash[:Linkedin])
    self.send("github=", attributes_hash[:github])
    self.send("biog=", attributes_hash[:blog])
    self.send("profile_quote=", attributes_hash[:profile])
    self.send("bio=", attributes_hash[:bio])
  end

  def self.all
    @@all
  end
end
