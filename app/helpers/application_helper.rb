module ApplicationHelper
  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end
  
  def resource_name
     :user
  end

  def resource
     @resource ||= User.new
  end

  def devise_mapping
     @devise_mapping ||= Devise.mappings[:user]
  end
   
  def link_to_add_fields(name, f, association)
       new_object = f.object.send(association).klass.new
       id = new_object.object_id
       fields = f.fields_for(association, new_object, child_index: id) do |builder|
         render(association.to_s.singularize + "_fields", f: builder)
       end
       link_to(name, '#', class: "add_fields btn btn-mini btn-info", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
