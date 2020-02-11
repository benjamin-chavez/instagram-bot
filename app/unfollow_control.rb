require 'selenium-webdriver'

def private_username
  'rosadj.music@gmail.com'
end

def private_password
  'seasonalfrequencies2019'
end

def login(username, password)
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to 'https://www.instagram.com/'
  sleep(5)
  login_btn = driver.find_element(xpath: '/html/body/div[1]/section/main/article/div[2]/div[2]/p/a')
  login_btn.click
  sleep(3)
  user_text_box = driver.find_element(:xpath => "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[2]/div/label/input")
  user_text_box.send_keys username

  password_text_box = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[3]/div/label/input")
  password_text_box.send_keys password
  login_btn = driver.find_element(:xpath, "//*[@id='react-root']/section/main/div/article/div/div[1]/div/form/div[4]")
  login_btn.click
  sleep(5)
  notifications_btn = driver.find_element(:xpath, '/html/body/div[4]/div/div/div[3]/button[2]')
  notifications_btn.click
  sleep(1)
end

def follower_list
  homepage_button = driver.find_element(:xpath, '/html/body/div[1]/section/nav/div[2]/div/div/div[3]/div/div[3]/a')
  homepage_button.click
  sleep(4)

  followers_btn = driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[2]')
  followers_btn.click
  sleep(2)

  scroll = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
  my_range = (1..100)
  my_range.each do |paramater|
    driver.execute_script("arguments[0].scrollTop = arguments[0].scrollHeight", scroll)
    sleep(2)
  end

  followers_array = []
  follower_elements = driver.find_elements(:tag_name, 'a')
  follower_elements.each do |param|
    unless param.text.to_s.strip.empty?
      followers_array << param.text
    end
  end
  followers_array
end

def following_list
  driver.navigate().refresh()

  following_btn = driver.find_element(:xpath, '/html/body/div[1]/section/main/div/header/section/ul/li[3]')
  following_btn.click
  sleep(2)
  scroll = driver.find_element(:xpath, '/html/body/div[4]/div/div[2]')
  my_range = (1..100)
  my_range.each do |paramater|
    driver.execute_script("arguments[0].scrollTop = arguments[0].scrollHeight", scroll)
    sleep(2)
  end

  following_array = []
  following_elements = driver.find_elements(:tag_name, 'a')
  following_elements.each do |param|
    unless param.text.to_s.strip.empty?
      following_array << param.text
    end
  end
  following_array
end

def unfollow_list
  followers_hash = {}
  followers_array.each do |elem|
    followers_hash[elem] = elem
  end

  following_hash = {}
  following_array.each do |elem|
    following_hash[elem] = elem
  end

  result = {} ######################### DO YOU NEED THIS LINE OF CODE?
  following_hash.each {|k, v| result[k] = followers_hash[k] if followers_hash[k] != v }
  to_unfollow_hash = result
  unfollow_array = []
  to_unfollow_array = to_unfollow_hash.to_a
  to_unfollow_array.each do |item|
    unless item == nil
    unfollow_array << item
    end
  end
  unfollow_array
end

login(private_username, private_password)
follower_list
following_list
unfollow_list
