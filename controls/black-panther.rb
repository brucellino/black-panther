# encoding: utf-8
# copyright: 2018, The Authors

require 'httparty'
require 'json'
require 'awesome_print'

if ENV['GITHUB_TOKEN'].nil? then
  fail "Please set the GITHUB_TOKEN environment variable"
end
if ENV['GITHUB_REPO'].nil? then
  fail "Please set the GITHUB_REPO environment variable"
end

base_uri = "https://api.github.com"
github_token = ENV['GITHUB_TOKEN']
repo = ENV['GITHUB_REPO']

options = { 
  headers: {
    "Accept" => "application/vnd.github.black-panther-preview+json",
    "token" => "ENV['GITHUB_TOKEN']",
    "User-Agent" => "httparty"
  }
}
url = "https://api.github.com/repos/#{repo}/community/profile"
black_panther = HTTParty.get(url, options)
File.open('black-panther.json','w') do |f|
  f.write(black_panther)
end

# Community Power !
control 'Power to the People' do                        # A unique ID for this control
  impact 0.75                                # The criticality, if this control fails.
  title 'Black Panther ✊🏿'
  desc 'Before you can Revolt, you Must be able to Read'
  describe json('black-panther.json') do                  # The actual test
    its('health_percentage') { should be > 75 }
  end
  describe json('black-panther.json') do
    its(['documentation']) { should be }
    its(['files','contributing']) { should be }
    its(['files','readme']) { should be }
    its(['files','pull_request_template']) { should be }
  end
end

control 'I fought the law, but the law won' do
  impact 0.75
  title 'Wynona Earp  👮 ‍♀️'
  describe json('black-panther.json') do
    its(['files','code_of_conduct']) { should be }
    its(['files','license','key']) { should include 'pache' }
    its(['files' , 'license','spdx_id']) { should cmp 'Apache-2.0' }
  end
end
