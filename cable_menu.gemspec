Gem::Specification.new do |s|  
  s.name = %q{cable_menu}  
  s.version = "0.0.1"  
  
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=  
  s.authors = ["Spencer Markowski | The Able Few"]  
  s.date = %q{2010-08-29}  
  s.description = %q{Cable Menu}  
  s.email = %q{spencer@thablefew.com}  
  s.files = ["README", "Rakefile", "lib/cable_menu.rb", "cable_menu.gemspec", "lib/cable_menu/acts_as_cable_menu.rb","lib/cable_menu/acts_as_cable.rb","rails/init.rb","generators/cable_menu/cable_menu_generator.rb","generators/cable_menu/templates/cable_menu_migration.rb","generators/cable_menu/templates/cable_model.rb","generators/cable_menu/USAGE"]  
  s.has_rdoc = false  
  s.homepage = %q{http://theablefew.com/}  
  s.require_paths = ["lib"]  
  s.rubyforge_project = %q{cable_menu}  
  s.rubygems_version = %q{1.3.4}  
  s.summary = %q{Create cable menus}  

  if s.respond_to? :specification_version then  
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION  
    s.specification_version = 3  

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then  
    else  
    end  
  else  
  end  
end