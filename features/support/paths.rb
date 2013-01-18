module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /^the sign in page$/
      new_user_session_path
      
    when /^the vending machine index page$/
      vending_machines_path
    when /^the page for vending machine "(.+)"$/
      vending_machine_path(VendingMachine.find_by_serial_number($1))
      
    end
  end
end

World(NavigationHelpers)
