require 'watir'
browser = Watir::Browser.new
browser.goto("https://form.jotform.com/201882323530347")
sleep 3.00
# This clicks on the next button
browser.button(text: 'Next').click

sleep 3.00

#Type in fist name
browser.text_field(id: 'first_3').set 'Bet'

sleep 3.00
#Type in surname
browser.text_field(id: 'last_3').set 'victor'
#Click the next button
sleep 3.00

# Using a Css selector to click the next button
browser.button(css: 'div#cid_3 > div > div:nth-of-type(3) > button:nth-of-type(2)').click
sleep 3.00


# Using a Xpath selector to Click on next button
button = browser.div(class: /jfCard-actions/).button(xpath: '//li[2]//div[1]//div[1]//div[3]//button[2]').wait_until(timeout: 100, &:present?)
button.fire_event :onclick



#browser.span(css: 'div#cardProgress > div > div:nth-of-type(4) > div > div > span').click

#browser.button(class: 'jfInput-button forNext u-right').click
sleep 3.00


