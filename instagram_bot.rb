# INSTAGRAM BOT
require 'selenium-webdriver'
require 'open-uri'
require_relative 'login_info'


username = 'rosadj.music@gmail.com'
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

##############################################################################################################################################################
# GET LIST OF FOLLOWERS

# Def get_followers
sleep(5)
# driver = Selenium::WebDriver.for :chrome
homepage_button = driver.find_element(:xpath, '/html/body/div[1]/section/nav/div[2]/div/div/div[3]/div/div[3]/a')
homepage_button.click
sleep(4)

driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[2]').click
sleep(2)

scr1 = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
my_range = (1..50)
my_range.each do |paramater|
  driver.execute_script("arguments[0].scrollTop = arguments[0].scrollHeight", scr1)
  sleep(2)
end

elements = driver.find_elements(:tag_name, 'a') #.attribute['title']
p elements.size
puts''
puts''

accounts_array = []
elements.each do |param|
  unless param.text.to_s.strip.empty?
    accounts_array << param.text
  end
end
puts accounts_array
puts ''
puts ''
# end

sleep(10)

##############################################################################################################################################################
# METHOD TO GET LIST OF ACCOUNTS THAT I AM FOLLOWING
p 'getting accounts i follow'


# Def get_followed_accounts
sleep(2)
# homepage_button = driver.find_element(:xpath, '/html/body/div[1]/section/nav/div[2]/div/div/div[3]/div/div[3]/a')
# homepage_button.click
# sleep(4)
driver.navigate().refresh()

followers_button = driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[3]')
# followers_button = /html/body/div[1]/section/main/div/header/section/ul/li[3]/a
followers_button.click
sleep(2)

scr1 = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
my_range = (1..50)
my_range.each do |paramater|
  driver.execute_script("arguments[0].scrollTop = arguments[0].scrollHeight", scr1)
  sleep(2)
end

im_following = driver.find_elements(:tag_name, 'a') #.attribute['title']
p im_following.size
puts''
puts''

im_following_array = []
im_following.each do |param|
  unless param.text.to_s.strip.empty?
    im_following_array << param.text
  end
end
puts im_following_array
# end

sleep(10)

##############################################################################################################################################################
# METHOD TO GET COMPARE THE TWO LISTS OF FOLLOWERS
puts "starting comparison method"

# convert followers array to hash
followers_hash = {}
accounts_array.each do |elem|
  followers_hash[elem] = elem
end

# convert following array to hash
following_hash = {}
im_following_array.each do |elem|
  following_hash[elem] = elem
end

puts ''
puts ''

h1 = followers_hash
h2 = following_hash
result = {}
h2.each {|k, v| result[k] = h1[k] if h1[k] != v }
to_unfollow_hash = result #=> {:a => 2, :c => "44"}


p h1
p h2

p elements.size
p im_following.size
puts ''
puts to_unfollow_hash
puts ''
p to_unfollow_hash.size

puts ''
puts ''

final_array2 = []
to_unfollow_array = to_unfollow_hash.to_a
to_unfollow_array.each do |item|
  unless item == nil
  final_array2 << item
  end
end

p final_array2
p final_array2.size

##############################################################################################################################################################

final_array2.each do |account|
  user_account = account[0].to_s
    unless user_account == "PEOPLE" || user_account == "HASHTAGS"
      driver.navigate.to "https://www.instagram.com/#{user_account}/"
      sleep(4)
      begin
      unfollow_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button')
      unfollow_button.click
      rescue Exception => e
        sleep(3)
        puts "#{user_account} could no be unfollowed.."
        # code that deals with some exception
      else
        sleep(3)
        uf_verification_button = driver.find_element(:xpath, '//html/body/div[4]/div/div/div[3]/button[1]')
        uf_verification_button.click
        sleep(rand(60))
      ensure
        # ensure that this code always runs, no matter what
        # does not change the final value of the block
        # puts 'test complete 1'
      end
    end
end
