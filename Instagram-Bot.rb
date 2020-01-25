# require "selenium-webdriver" # load in the webdriver gem to interact with Selenium
require 'selenium-webdriver'
require 'open-uri'
require_relative 'login_info'

username = mdma_username
password = mdma_password

# create a driver object and navigate to Instagram
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.instagram.com/"
sleep(5)

# find and click the login button to go to login screen
driver.find_element(xpath: "/html/body/div[1]/section/main/article/div[2]/div[2]/p/a").click
sleep(3)kb

# find username and pakbssword fields and enter your username and password
user_text_box =driver.find_element(:xpath => "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[2]/div/label/input")
password_text_box = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[3]/div/label/input")

user_text_box.send_keys username
password_text_box.send_keys password

# find and click the login button
login_button = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[4]")
login_button.click
sleep(5)

# find and click "not now" on the turn on notification screen
notifications_button = driver.find_element(:xpath, '/html/body/div[4]/div/div/div[3]/button[2]')
notifications_button.click
sleep(1)

#def liking_feed_photos(range)
my_range = (1..10)
my_range.each do |param|
  driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    sleep(2)
  end
# end

#   #hrefs_in_view = driver.find_elements_by_tag_name('a')
# end

# driver.execute(window.scrollTo(0, 2000))

sleep(25)
puts "test end"


