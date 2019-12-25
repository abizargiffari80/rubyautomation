Given("Buka browser") do
  visit('/')
  @wait.until { find(:xpath, "//div[@class='text-center']//img") }
end

# Given("Masukin url gmedes") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

Then("Kita udah form login gmedes") do
  page.should have_xpath("//div[@class='text-center']//img")
end

When("Isi form") do
	# binding.pry 		>>> ini untuk debug
	username = find(:xpath, "//input[@name='username']").fill_in with: 'aluma_merchant'
	
	password = find(:xpath, "//input[@name='password']").fill_in with: 'gmedes'
	
	find(:css, '#btnSubmit').click
	#sleep 3			>>> ini untuk pending 3 detik
end

Then("Verifikasi login berhasil") do
	sleep 3
  if find(:xpath, "//p[contains(text(),'tanggal 18')]").visible?
  	  page.should have_xpath("//p[contains(text(),'tanggal 18')]")
  	  btn_checklist = find(:css, '#dont_show').click

  	  btn_close = find(:css, 'button.btn.btn-ahalf-circle').click
  end
end


# ini xpath username: //input[@name='username']
# ini xpath password: //input[@name='password']
# ini xpath button login: //input[@id='btnSubmit']
# ini css button login: #btnSubmit