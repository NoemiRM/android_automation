module Utilities
  def self.take_screenshot
    if !File.directory?("screnshots")
      FileUtils.mkdir_p("screnshots")
    end
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screnshots",screenshot_name)
    $driver.screenshot(screenshot_file)
    return screenshot_file
    #embed("#{screenshot_file}","image/png")
  end

end