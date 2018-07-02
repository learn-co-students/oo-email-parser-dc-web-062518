# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_email = []
    web = @emails.split(" " || ",")
    web.each do |email|
      parsed_email << email.tr(",","")
    end
    parsed_email.uniq 
  end

end
