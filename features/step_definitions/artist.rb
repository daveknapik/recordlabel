Given /^there is one artist$/ do
  Artist.destroy_all
  @artist = Factory.create(:artist, :name => "Fennesz", :bio => "Austrian guitar and laptop composer")
  @release = Factory.create(:release, :artist_name => "Fennesz", :title => "Endless Summer", :description => "Everyone loves Fennesz")
end

When /^I follow the artist name$/ do
  click_link @artist.name
end

Then /^I should see the artist name$/ do
  page.should have_content @artist.name
end

Then /^I should see the artist bio$/ do
  page.should have_content @artist.bio
end
