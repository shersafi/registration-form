#!/usr/bin/perl
use strict;
use CGI ':standard';
use CGI::Carp qw(warningsToBrowser fatalsToBrowser);

my $fName = param('fName');
my $lName = param('lName');
my $country = param('country');
my $province = param('province');
my $street = param('street');
my $city = param('city');
my $postalCode = param('postalCode');
my $gender = param('gender');
my $phone = param('phone');
my $email = param('email');

if(length($phone) != 10){
    die "Phone number is not of the correct length of 10.";
}

if ($phone !~ /^[+-]?\d+$/){
    die "Phone number contains non-digits!";
} 

if (length($postalCode) != 6){
    die "Postal is not of the correct length of 6";
}

if ($email !~ /@/ ){
    die "Invalid email address."
}

print "Content-type: text/html\n\n";
print <<"HTML CONTENT";
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Customer Registration</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rubik">
        <link rel="shortcut icon" type="image/jpg" href="images/logo.svg"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            html, body {
                font-family: Rubik;
                font-size: 20px;
                text-align: center;
                background: url(images/bg.jpg) no-repeat center center fixed;;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }

            .login-box {
                transform: translateY(10%);
                margin-left: auto;
                margin-right: auto;
                width: 480px;
                height: 650px;
                background: white;
                border-radius: 10px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            .reg {
                font-size: 17px;
            }

            #small {
                width: 25%;
                
            }

            #btn {
                background-image: linear-gradient(to right, #499CE8 0%, #9733EE  51%, #DA22FF  100%);
                color: white;
                font-family: Rubik;
                height: 120%;
                width: auto;
            }

            .reg-text {
                margin-left: 5%;
                margin-right: 5%;
            }
        </style>
    </head>
    <body>
        <div class="login-box">
            <h2 style="transform: translateY(50%); font-size: 30px;">Thank you!</h2>
            <br>
            <div class="reg-text">
                Your account has been created! Below is a confirmation of your information:
            </div>
            <div class="reg">
                <br>
                <br>
                First Name: $fName
                <br>
                <br>
                Last Name: $lName
                <br>
                <br>
                Country: $country
                <br>
                <br>
                Province: $province
                <br>
                <br>
                Street: $street
                <br>
                <br>
                City: $city
                <br>
                <br>
                Postal Code: $postalCode
                <br>
                <br>
                Gender: $gender
                <br>
                <br>
                Phone: $phone
                <br>
                <br>
                Email: $email
                <br>
                <br>
                Password: Not displayed
                <br>
                <br>
            </div>
            <br>

        </div>
    </body>
</html>
HTML CONTENT




