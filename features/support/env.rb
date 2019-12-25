require 'selenium-webdriver'
require 'capybara/cucumber'
require 'pry'

Before do
    #your code
    Capybara.default_driver=:selenium_chrome
    Capybara.app_host='https://uat-clinics.gmedsapp.com'
    page.driver.browser.manage.window.resize_to(1920, 1080)
    @wait = Selenium::WebDriver::Wait.new(:timeout => 2)
end
After do
    # screenshoot page after execute test
    page.save_screenshot('screenshot.png')
end