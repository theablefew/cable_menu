class CableMenuGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
       m.migration_template 'cable_menu_migration.rb', 'db/migrate', {:assigns => cable_menu_local_assigns,:migration_file_name => "add_cable_menu_fields_to_#{custom_file_name}"}
       m.template 'cable_model.rb', File.join('app/models', class_path, "#{file_name}.rb")
    end
  end
    
  private
  def custom_file_name
    custom_name = class_name.underscore.downcase
    custom_name = custom_name.pluralize if ActiveRecord::Base.pluralize_table_names
    custom_name
  end

  def cable_menu_local_assigns
    assigns = {}
    assigns[:migration_action] = "add"
    assigns[:class_name] = "add_cable_menu_fields_to_#{custom_file_name}"
    assigns[:table_name] = custom_file_name
    assigns[:attributes]  = default_fields + user_provided_fields
    return assigns
  end
  
  def default_fields
    [Rails::Generator::GeneratedAttribute.new("title", "string"),
    Rails::Generator::GeneratedAttribute.new("cable_menuable_id", "integer"),
    Rails::Generator::GeneratedAttribute.new("cable_menuable_type", "string"),
    Rails::Generator::GeneratedAttribute.new("parent_id", "integer"),
    Rails::Generator::GeneratedAttribute.new("url", "string")]
  end
  
  def user_provided_fields
    args.collect{|user_arg| Rails::Generator::GeneratedAttribute.new(user_arg.split(":").first.to_s, user_arg.split(":").last.to_s) }
  end
end