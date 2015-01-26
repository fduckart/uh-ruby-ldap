require 'rubygems'
require 'net/ldap'

LDAP_SERVER   = 'ldap.hawaii.edu'  
LDAP_PORT     = 636
LDAP_TREEBASE = 'dc=hawaii,dc=edu'

username = 'cn=bsar,ou=Specials,dc=hawaii,dc=edu'
password = '' #<-- Your password goes here.
if password.nil? || password.empty?
  puts 'SPECIAL DN PASSWORD NOT SET'
  exit false
end

ldap = Net::LDAP.new 
ldap.host = LDAP_SERVER
ldap.port = LDAP_PORT
ldap.encryption :simple_tls

ldap.authenticate username, password
if !ldap.bind
  puts 'DID NOT SUCCESSFULLY BIND'
  exit false
end

filter = Net::LDAP::Filter.eq("uid", "duckart")

puts "a. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
ldap.search(:base => LDAP_TREEBASE, 
            :filter => filter) do |entry|   
  puts "DN: #{entry.dn} \n"
  entry.each do |attribute, values|
    puts "   #{attribute}:"
    values.each do |value|
      puts "      --->#{value}"
    end
  end  
end
puts "z. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
