#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML:Document for the page we’re interested in...

doc = Nokogiri::HTML(open(ARGV[0].sub(/mathproc/,"http")))

mathStr = doc.xpath("//math")[0].to_s.gsub(/\"/,"'")

mathStr = 'webm  =ToExpression["' + mathStr + '",MathMLForm]'

File.open('mat.m', 'w') { |file| file.write(mathStr) }


