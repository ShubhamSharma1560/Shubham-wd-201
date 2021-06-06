def get_command_line_argument
  # ARGV is an array that Ruby defines for us,

  # which contains all the arguments we passed to it

  # when invoking the script from the command line.

  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html

  if ARGV.empty?

    puts 'Usage: ruby lookup.rb <domain>'

    exit

  end

  ARGV.first
end

# `domain` contains the domain name we have to look up.

domain = get_command_line_argument

# File.readlines reads a file and returns an

# array of string, where each element is a line

# https://www.rubydoc.info/stdlib/core/IO:readlines

dns_raw = File.readlines('zone')

# ..

# ..

# FILL YOUR CODE HERE

def parse_dns(dns_raw)
  dns_records = {}

  dns_raw.each do |dns|
    dns = dns.strip

    next unless !dns.start_with?('#') || (dns.length != 0)

    nested_dns = {}

    nested_dns[:type] = dns.split(', ', -1)[0]

    nested_dns[:destination] = dns.split[2]

    dns_records[dns.split(', ', -1)[1]] = nested_dns
  end

  dns_records
end

def resolve(dns_records, lookup_chain, domain)
  record = dns_records[domain]

  if !record

    lookup_chain = ['Error: Record not found for ' + domain]

  elsif record[:type] == 'CNAME'

    lookup_chain.push(record[:destination])

    resolve(dns_records, lookup_chain, record[:destination])

  elsif record[:type] == 'A'

    lookup_chain.push(record[:destination])

  end
end

# ..

# ..

# To complete the assignment, implement `parse_dns` and `resolve`.

# Remember to implement them above this line since in Ruby

# you can invoke a function only after it is defined.

dns_records = parse_dns(dns_raw)

lookup_chain = [domain]

lookup_chain = resolve(dns_records, lookup_chain, domain)

puts lookup_chain.join(' => ')
