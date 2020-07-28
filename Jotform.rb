require 'watir'
browser = Watir::Browser.new
browser.goto("https://form.jotform.com/201882323530347")
sleep 5.00
# This clicks on the next button
browser.button(text: 'Next').click



sleep 5.00