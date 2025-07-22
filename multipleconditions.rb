def verify_agent(rank,name,credentials)
  if(rank=="007" && name == "Bond") || credentials=="Secret agent"
    puts "Access Granted"
  else
    puts "Access Denied"
  end
end
verify_agent("007","bond","Secret agent") # Access Granted


