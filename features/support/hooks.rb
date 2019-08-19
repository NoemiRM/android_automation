Before do
    $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    embed("#{Utilities.take_screenshot}","image/png")
  end

  $driver.driver_quit
end

AfterStep do
  embed("#{Utilities.take_screenshot}","image/png")
end