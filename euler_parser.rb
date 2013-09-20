require 'nokogiri'
require 'open-uri'
require 'erb'

problem_number = 1
quit = false

while(!quit) do
  doc = Nokogiri::HTML(open("http://projecteuler.net/problem=#{problem_number}"))

  title_xml = doc.css('#content h2')
  title = if title_xml.nil?
    ''
  else
    title_xml.text.strip
  end

  problem_content_xml = doc.css('.problem_content')
  problem_content = if problem_content_xml.nil?
    quit = true
    ''
  else
    problem_content_xml.text.strip
  end

  problem_number += 1

  rspec_template = ERB.new <<-EOF
require 'spec_helper'

describe '<%= title %>' do
  it '<%= problem_content %>' do
    fail
  end
end
  EOF

  puts rspec_template.result(binding)
end
