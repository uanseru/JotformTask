require 'watir'
require 'rspec'


browser = Watir::Browser.new


# Goes straight to the website
browser.goto("https://form.jotform.com/201882323530347")


# delays the pace of the test (to ensure a happy path its important to have these breaks to counter for slow systems)
sleep 3.00
# This clicks on the next button
browser.button(text: 'Next').click

sleep 3.00

#Type in first name
browser.text_field(id: 'first_3').set 'Bet'

sleep 3.00
#Type in surname
browser.text_field(id: 'last_3').set 'Victor'
#Click the next button
sleep 3.00

# Using a Css selector to click the next button
browser.button(css: 'div#cid_3 > div > div:nth-of-type(3) > button:nth-of-type(2)').click
sleep 4.00



# click on Upload file button
browser.div(class: 'inputContainer').wait_until(timeout: 100, &:present?).click

sleep 4.00

#upload the screenshot
browser.file_field.set "/Users/admin/Desktop/screenshot.png"

sleep 3.00
# Using a Xpath selector to Click on next button
button = browser.div(class: /jfCard-actions/).button(xpath: '//li[2]//div[1]//div[1]//div[3]//button[2]').wait_until(timeout: 100, &:present?)
button.fire_event :onclick

sleep 3.00

#browser.element(tag_name: 'canvas').right_click

#This will be my unique signature
browser.element(class: 'jSignature').double_click
sleep 3.00


#Click the next button
button2 = browser.div(class: /jfCard-actions/).button(xpath: '//li[3]//div[1]//div[1]//div[3]//button[2]').wait_until(timeout: 100, &:present?)
button2.fire_event :onclick

sleep 3.00

# Select the calender picker
calendar =browser.svg(css: 'div#cid_6 > div > div:nth-of-type(2) > div:nth-of-type(3) > div > span > svg').wait_until(timeout: 100, &:present?)
calendar.fire_event :onclick
sleep 3.00

#Click on the date (have to double click because i noticed it is a little buggy)
date = browser.td(class: 'selected today').wait_until(timeout: 100, &:present?).double_click

sleep 4.00


#Click the next button
button3 = browser.div(class: /jfCard-actions/).button(xpath: '//li[4]//div[1]//div[1]//div[3]//button[2]').wait_until(timeout: 100, &:present?)
button3.fire_event :onclick


sleep 4.00
#Click on the dropdown button
browser.span(class: 'jfDropdown-toggle').click

sleep 4.00
#Select an security question option
browser.option(text: 'Favourite school professor').click

sleep 4.00
#Type in your answer
browser.text_field(id:'input_10_field_2').set 'Mr Johnson'

sleep 4.00
#Click the submit button
submit = browser.div(class: /jfCard-actions/).button(xpath: '//li[5]//div[1]//div[1]//div[3]//button[3]').wait_until(timeout: 100, &:present?)
submit.fire_event :onclick

sleep 4.00

#Assert if form has been submitted
#{browser.text.include?("Your submission has been received!").should == true}"


