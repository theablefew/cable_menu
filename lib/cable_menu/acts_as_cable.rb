module Cable
  
  def self.included( base )
    base.send :extend, ClassMethods
  end
  
  module ClassMethods
    def acts_as_cable( reflection_options = {} )
      send :include, InstanceMethods
      has_one :menu, reflection_options.merge( :as => :cable_menuable )
    end
  end
  
  module InstanceMethods
    
    
  end
  
  ActiveRecord::Base.send :include, Cable
  
end