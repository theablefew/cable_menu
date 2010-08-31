module Cable
  
  def self.included( base )
    base.send :extend, ClassMethods
  end
  
  module ClassMethods
    def acts_as_cable
      send :include, InstanceMethods
      has_one :menu, :as => :cable_menuable
    end
  end
  
  module InstanceMethods
    
    
  end
  
  ActiveRecord::Base.send :include, Cable
  
end