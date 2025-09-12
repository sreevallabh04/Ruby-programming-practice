# puts //.class 
# phrase = "Ruby programming language is amazing!!"
# p phrase =~/R/
# p phrase = ~/!/
# p phrase =~/ /
# p phrase = ~/T/
# p phrase =~/ing/


voicemail = "Welcome to SWE2034. Please leave a message after the beep. Press the star key when you are done."
p voicemail.scan(/e/)
p voicemail.scan(/@/)

#any occurrence of either m or e

p voicemail.scan(/[me]/)


#scan method continued

voicemail = "The old taylor cant come to the phone right now. why? oh, cause shes dead!"
#look what you made me do

p voicemail.scan(/\d/)
p voicemail.scan(/\d+/)
p voicemail.scan(/(\d+)/) { |match| puts match.length}


