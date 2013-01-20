module NavigationHelpers
  def path_to(page_name)
    case page_name
      
    when /^the home\s?page$/
      root_path

    when /^the sign in page$/
      new_user_session_path
      
    when /^the partner index page$/
      partners_path
    when /^the edit page for partner "(.+)"$/
      edit_partner_path(Partner.find_by_name($1))
    when /^the new partner page$/
      new_partner_path
      
    when /^the vending machine index page$/
      vending_machines_path
    when /^the page for vending machine "(.+)"$/
      vending_machine_path(VendingMachine.find_by_serial_number($1))
    when /^the new vending machine page$/
      new_vending_machine_path
      
    end
  end
end

World(NavigationHelpers)
