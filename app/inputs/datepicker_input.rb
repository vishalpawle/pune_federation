class DatepickerInput < SimpleForm::Inputs::Base
  def input
    @builder.hidden_field(attribute_name, input_html_options) + \
    @builder.text_field(attribute_name, { :class => attribute_name.to_s + "-alt", :id => attribute_name.to_s + "-alt", :readonly => true}) 
  end
end

