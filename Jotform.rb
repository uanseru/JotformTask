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

