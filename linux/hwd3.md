###REPORT

###Date report: 11/06/2025

###Excersice name: Linux exc day 3

##p/s: 

report details: 
1. Create 3 username (a=apple,b=banana,c=lemon)
    a)account should have default shell is /bin/sh -> *useradd apple*
    b)3 account and exploit should default shell is /bin/bash -> 
                                                                *adduser banana*
                                                                *adduser lemon*
                                                               *adduser exploit*
2.exploit with permission **3** into **/home/banana** -> *chmod 773 /home/banana* 
and with permission **5** into **/home/lemon** -> *chmod 775 /home/lemon* 

3.
    a)account exploit should have owner the home directory of account apple:
        step 1: check if apple account exists -> *grep apple /etc/passwd*
        step 2: when apple account exists and has data copy apple folder to /home -> *cp -r /etc/skel/. /home/apple*
        step 3: exploit account owns apple directory -> *chown exploit /home/apple*
    b)banana and lemon accounts have write permissions in apple directory -> *chmod 773 apple*
