module ApplicationHelper
  include FormsHelper
  
  # Create a link for dynamically adding fields for a has_many relationship.
  def link_to_add_fields(name, path, f, association, extra_locals = {}, classy = '')
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, child_index: "new_#{association}") do |builder|
      render(partial: association.to_s.singularize + '_fields', locals: { f: builder }.merge(extra_locals))
    end

    link_to name, path, 'data-association': "#{association}", 'data-content': "#{fields}", class: 'link-to-add-fields ' + classy
  end

  # Create a link for dynamically removing fields for a has_many relationship.
  def link_to_remove_fields(name, path, classy = '')
    link_to name, path, class: 'link-to-remove-fields ' + classy
  end
end
