require 'mechanize'
require 'date'
require 'json'
require 'nokogiri'

agent = Mechanize.new
page = agent.get 'https://www.ru-chipdip.by/'

search_form = page.form_with( :id => 'search__form')
search_form.searchtext = 'диод'

result_page = search_form.submit
result_div = result_page.bases_with(:id => 'search_results')


# .at('#search_results')