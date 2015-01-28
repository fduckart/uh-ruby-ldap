uh-ruby-ldap
===========

LDAP Ruby Demonstration Script

**Overview**

The program demonstrates how to do a simple LDAP search
of the University of Hawaii LDAP service. 

Note: You must specify a password for your special DN.
The example run of the program uses the 'bsar' special DN,
but the value of the password has been removed from the 
checked-in code.

**Technology**

The program was developed on Apple Mac OS X 10.10.2,
using ruby version 2.0.0 and gem version 2.0.14.

**Verify you have Ruby installed**

	$ ruby --version
	ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin14]

**Install the net-ldap Library**

	$ sudo gem install net-ldap

	Fetching: net-ldap-0.11.gem (100%)
	Successfully installed net-ldap-0.11
	Parsing documentation for net-ldap-0.11
	Installing ri documentation for net-ldap-0.11
	1 gem installed

**Running the program**

Run the program from the command line: 

    $ ruby ldap-ex.rb 
    a. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    DN: uhEntry=16d4fd0bffd6c91a4e8af1b6642c2cea7dddcc707,ou=People,dc=hawaii,dc=edu 
       dn:
          --->uhEntry=16d4fd0bffd6c91a4e8af1b6642c2cea7dddcc707,ou=People,dc=hawaii,dc=edu
       objectclass:
          --->eduPerson
          --->inetOrgPerson
          --->organizationalPerson
          --->person
          --->top
          --->uhEduPerson
       uhuuid:
          --->17958670
       cn:
          --->Frank R Duckart
       edupersonaffiliation:
          --->staff
       edupersonorgdn:
          --->uhsystem
       givenname:
          --->Frank
       mail:
          --->duckart@hawaii.edu
          --->frank.duckart@hawaii.edu
       sn:
          --->Duckart
       uhacknowledgement:
          --->generalConfidentialityNotice=20060101T000000
       uhorgaffiliation:
          --->eduPersonOrgDN=uhsystem,eduPersonAffiliation=staff
       uid:
          --->duckart
       displayname:
          --->Frank Duckart
       facsimiletelephonenumber:
          --->(808) 956-2412
       ou:
          --->University of Hawaii System
          --->Information Technology Services, Management Information Systems
       physicaldeliveryofficename:
          --->Info Tech Ctr, 6th Fl
       telephonenumber:
          --->(808) 956-8904
       title:
          --->Info Tech Spec
    z. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**For More Information**

Contact me via email at duckart@hawaii.edu

