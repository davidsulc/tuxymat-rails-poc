module NavigationHelpers
  def path_to(page_name)
    case page_name
      
    when /^the home\s?page$/
      root_path

    when /^the sign in page$/
      new_user_session_path
      
    when /^the contract index page$/
      contracts_path
    when /^the new contract page$/
      new_contract_path
    when /^the page for contract with id (\d+)$/
      contract_path(Contract.find($1))
      
    when /^the partner index page$/
      partners_path
    when /^the new partner page$/
      new_partner_path
    when /^the edit page for partner "(.+)"$/
      edit_partner_path(Partner.find_by_name($1))
      
    when /^the vending machine index page$/
      vending_machines_path
    when /^the new vending machine page$/
      new_vending_machine_path
    when /^the page for vending machine "(.+)"$/
      vending_machine_path(VendingMachine.find_by_serial_number($1))
      
    end
  end
end

World(NavigationHelpers)
