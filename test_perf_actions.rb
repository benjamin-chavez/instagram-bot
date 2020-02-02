##############################################################################################################################################################
# PERFORM ACTIONS ON USER PAGE (FOLLOW AND LIKE PICTURE)
# INSTAGRAM BOT
require 'selenium-webdriver'
require 'open-uri'
#require_relative 'app/login_info'

username = 'aminchavez_official'
password = 'seasonalfrequencies2019'

# def login(username, password)
# create a driver object and navigate to Instagram
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.instagram.com/"
sleep(5)

# find and click the login button to go to login screen
login_button = driver.find_element(xpath: '/html/body/div[1]/section/main/article/div[2]/div[2]/p/a')
login_button.click
sleep(3)

# find username and password fields and enter your username and password
user_text_box = driver.find_element(:xpath => "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[2]/div/label/input")
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
# end

sleep(5)
# driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.instagram.com/xsaeidi/'

sleep(4)

##############################################################################################################################################################

# begin
#   # something which might raise an exception
#   first_picture = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div[2]/article/div/div/div[1]/div[1]/a/div/div[2]')
#   sleep(4)
#   rescue Exception => e
#     puts"user does not have any pictures"
#     # code that deals with some exception
#   else
#     # code that runs only if *no* exception was raised
#     puts 'User has pictures'
#     first_picture.click
#     driver.navigate().refresh()
#     sleep(4)
#     # like_pic_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div/article/div[2]/section[1]/span[1]/button')
#     # like_pic_button.click
#     sleep(5)
#     puts "pretest"

#       puts "text exists"
#     else
#       puts "text does not exist"
#        sleep(4)
#     end
#     puts "posttest"
#     # follow_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div/article/header/div[2]/div[1]/div[2]/button')
#     # follow_button.click
#   ensure
#     # ensure that this code always runs, no matter what
#     # does not change the final value of the block
#     puts 'test complete 1'
# end

# puts 'test complete 2'
# sleep(10)

##############################################################################################################################################################

# my_array = %w[item1, item2, item3, item4, item5]
# puts my_array
# puts 'end'
# puts''

# 2.times { |i| my_array.delete_at(0) }

# puts my_array
# puts ''


# report_button = driver.find_element(:xpath, '')

# Action Blocked

# if driver.find_element(:Link_text, 'Action Blocked')
#   puts "text exists"
# else
#   puts "text does not exist"

# report_a_problem_button = driver.find_element(:xpath, '/html/body/div[4]/div/div/div[2]/button[1]')

sleep (4)
follow_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button')
follow_button.click

sleep(10)
