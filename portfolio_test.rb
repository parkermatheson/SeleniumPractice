require 'selenium-webdriver'
require 'rspec'

# driver = Selenium::WebDriver.for :firefox 
# driver.navigate.to 'https://wpm-devcamp-portfolio.herokuapp.com/register'

# element = driver.find_element(id: 'user_email')
# element.click
# element.send_keys 'email@email.com'

# element2 = driver.find_element(id: 'user_name')
# element2.click
# element2.send_keys 'Pat Doe'

# element3 = driver.find_element(id: 'user_password')
# element3.click
# element3.send_keys 'asdfjkl;'

# element4 = driver.find_element(id: 'user_password_confirmation')
# element4.click
# element4.send_keys 'asdfjkl;'

# element.submit

# driver.quit

describe 'Portfolio Application' do
  describe 'registers a new user' do
    it 'fills out the new user form successfully' do
      # Go to the portfolio site
      # click on the register button
      driver = Selenium::WebDriver.for :firefox
      driver.navigate.to 'https://wpm-devcamp-portfolio.herokuapp.com/register'
      # enter email
      element = driver.find_element(id: 'user_email')
      element.click
      element.send_keys "email@email.com"
      # enter name
      element2 = driver.find_element(id: 'user_name')
      element2.click
      element2.send_keys 'Pat Doe'
      # enter password
      element3 = driver.find_element(id: 'user_password')
      element3.click
      element3.send_keys 'asdfjkl;'
      # enter password confirmation
      element4 = driver.find_element(id: 'user_password_confirmation')
      element4.click
      element4.send_keys 'asdfjkl;'
      # click sign up button
      # expectation
      # expect(element2).to have_content('Pat Doe')
    end
  end
  describe 'logs in a user' do
    it 'clicks on the login button' do
    end
    it 'enters a correct username' do
    end
    it 'enters a correct password' do
    end
    it 'clicks on the submit button' do
    end
  end
  describe 'logs a user out' do
    it 'clicks the logout button' do
    end
  end
end
