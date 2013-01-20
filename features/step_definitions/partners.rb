When /^(.*) within the row for partner "(.+)"$/ do |step_name, name|
  partner = Partner.find_by_name(name)
  within("#partner_#{partner.id}") { step step_name }
end