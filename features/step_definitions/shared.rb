Given /^there are the following (.+):$/ do |model, table|
  model_parts = model.split(/\s+/)
  pluralized_part = model_parts.pop
  
  model_parts = model_parts << pluralized_part.singularize
  
  model_name = model_parts.join('_')
  table.hashes.each do |attributes|
    FactoryGirl.create(model_name.to_sym, attributes)
  end
end