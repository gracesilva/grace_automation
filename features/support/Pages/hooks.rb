require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new (ENV['BROWSER'] || :chrome).to_sym # user can choose the browser to run on prompt/terminal
end

After do |scenario|
  if scenario.failed?
  @browser.screenshot.save 'reports/screenshot.png'
  embed 'screenshot.png', 'image/png'
  end
  @browser.quit
end