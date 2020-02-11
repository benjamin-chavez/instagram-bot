# INSTAGRAM BOT
require 'selenium-webdriver'
require 'open-uri'
require_relative 'app/login_info'

username = private_username
password = private_password

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
# GET TO HOME PAGE

# Def get_followers
sleep(5)
# driver = Selenium::WebDriver.for :chrome
homepage_button = driver.find_element(:xpath, '/html/body/div[1]/section/nav/div[2]/div/div/div[3]/div/div[3]/a')
homepage_button.click
sleep(4)

# driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[2]').click
# sleep(2)

# scr1 = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
# my_range = (1..50)
# my_range.each do |paramater|
#   driver.execute_script("arguments[0].scrollTop = arguments[0].scrollHeight", scr1)
#   sleep(2)
# end

# elements = driver.find_elements(:tag_name, 'a') #.attribute['title']
# p elements.size
# puts''
# puts''

# accounts_array = []
# elements.each do |param|
#   unless param.text.to_s.strip.empty?
#     accounts_array << param.text
#   end
# end
# puts accounts_array
# puts ''
# puts ''
# # end

# sleep(10)

##############################################################################################################################################################
# METHOD TO GET LIST OF ACCOUNTS THAT I AM FOLLOWING
p 'getting accounts I follow'

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
my_range = (1..100)
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
puts "end"
# end

sleep(10)

##############################################################################################################################################################
# GET TO FAMOUS ACCOUNT

# Def get_followers
sleep(5)
# driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.instagram.com/jauzofficial/"

sleep(4)

followers_button = driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[2]')
followers_button.click
sleep(2)

scr1 = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
my_range = (1..5)
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

h2 = followers_hash
h1 = following_hash
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

5.times { |i| final_array2.delete_at(0) }

##############################################################################################################################################################
# # 1. clean up list
# # 2. Iterate through list of users
# # 3. Go to webpage of a specific user
# driver.navigate.to "https://www.instagram.com/#{}/"
# # 4. click th unfollow button
users = 0
final_array2.each do |account|
  user_account = account[0].to_s
    unless user_account == 'PEOPLE' || user_account == 'HASHTAGS'
      driver.navigate.to "https://www.instagram.com/#{user_account}/"
      sleep(4)
      puts ""
      puts user_account
      begin
      # something which might raise an exception
      # driver.navigate().refresh()
      first_picture = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div[2]/article/div/div/div[1]/div[1]/a/div')
      first_picture.click
      sleep(4)
      puts 'User has pictures'
      driver.navigate().refresh()
      like_pic_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div/article/div[2]/section[1]/span[1]/button')
      like_pic_button.click
      sleep(2)
      rescue Exception => e
        begin
        first_picture = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div[3]/article/div[1]/div/div[1]/div[1]/a/div/div[2]')
        first_picture.click
        sleep(4)
        puts 'User has pictures'
        driver.navigate().refresh()
        like_pic_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/div/article/div[2]/section[1]/span[1]/button')
        like_pic_button.click
        rescue Exception => e
          puts "user does not have any pictures"
        else
          puts "user picture was liked2"
        end
        # code that deals with some exception
        # driver.navigate.to "https://www.instagram.com/#{user_account}/"
        # follow_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button')
        # follow_button.click
        # sleep(3)
      # rescue Exception => e
      #   puts "User does not have follow button"
      else
        # code that runs only if *no* exception was raised
        puts "user picture was liked1"
      ensure
        # ensure that this code always runs, no matter what
        # does not change the final value of the block
      end
      begin
      driver.navigate.to "https://www.instagram.com/#{user_account}/"
      sleep(4)
      follow_button = driver.find_element(:xpath, '//*[@id="react-root"]/section/main/div/header/section/div[1]/div[1]/span/span[1]/button')
      follow_button.click
      sleep(3)
      rescue Exception => e
        puts "follow button not found"
      else
        puts "account followed"
      ensure
        puts "followed block over"
        users += 1
        puts users
      end
      sleep(rand(60))
    end
end

# //*[@id="react-root"]/section/main/div/header/section/div[2]/button
# //*[@id="react-root"]/section/main/div/header/section/div[2]/button
##############################################################################################################################################################
# PERFORM ACTIONS ON USER PAGE (FOLLOW AND LIKE PICTURE)


