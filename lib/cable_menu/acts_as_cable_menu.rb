module CableMenu
  
  def self.included( base )
    base.send :extend, ClassMethods
  end
  
  module ClassMethods
    def acts_as_cable_menu
      send :include, InstanceMethods
      belongs_to :cable_menuable, :polymorphic => true
      acts_as_nested_set
    end
  end
  
  module InstanceMethods
    
    def resource
      self.cable_menuable
    end
    
    def route
      (self.ancestors.collect{|an| an.url } << self.url).join
    end
    
  end
  
  ActiveRecord::Base.send :include, CableMenu
  
end