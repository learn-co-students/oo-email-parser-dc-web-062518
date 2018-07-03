# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  def initialize(string_of_email_addresses)
    @string = string_of_email_addresses
  end

  def parse
    var = @string.split(/[, ]/)
    var.map do |email|
      if email.length < 2
        var.delete(email)
      end
    end
    var.uniq
  end


end
