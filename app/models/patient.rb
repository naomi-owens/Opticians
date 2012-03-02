class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :opticians, :through => :appointments
  validates :password, :confirmation =>true
  validates_presence_of :firstname, :lastname, :address, :dob, :homenumber, :gender
  
  
  def self.authenticate(name, submitted_password)  
		patient = find_by_firstname(name)		
		return nil  if patient.nil?
		
		return patient if patient.has_password?(submitted_password)
		return nil
  end
  
  def self.checkLastVisitDate(date)
    if date < Date.today
    end
  end
	
  def has_password?(submitted_password)
    password == submitted_password
  end
  
  def self.search(search)
    search_condition = search + "%"
    find(:all, :conditions => ['firstname LIKE ? OR lastname LIKE ?', search_condition, search_condition])
  end  
end
