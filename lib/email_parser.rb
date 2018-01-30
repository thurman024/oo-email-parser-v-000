# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(something)
    @emails = something
  end

  def parse
    list = @emails.split(/[,\s]?\s/)
    return_emails = []
    list.each do |e|
      if !return_emails.include?(e)
        return_emails << e
      end
    end
    return_emails
  end


end
