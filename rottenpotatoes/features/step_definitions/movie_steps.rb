Given /the following movies exist:$/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

Then /the director of "(.*)" should be "(.*)"/ do |t, d|
    expect(page.body).to match(/#{t}.*Director.*#{d}/m)
end