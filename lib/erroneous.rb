module Erroneous
  
  require 'erroneous/railtie' if defined?(Rails)
  
  mattr_accessor :error_class
  @@error_class = 'error'
  
  mattr_accessor :error_tag
  @@error_tag = :div
    
  # Output basic sentence errors.
  #
  # Usage:
  #
  #   <%= errors(@user, :name) %>
  #
  # Equivalent:
  #
  #   <%- if @user.errors[:name] -%>
  #     <%= content_tag(:div, :class => 'errors' ) do %>
  #       <%= @user.errors[:name].to_sentence %>
  #     <% end %>
  #   <%- end -%>
  
  def errors(object, method, options = {})
    if object.errors[method]
      content_tag(::Erroneous.error_tag, :class => ::Erroneous.error_class) do
        object.errors[method].to_sentence
      end
    end
  end
  
end