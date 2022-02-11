#!/usr/bin/env perl 
#===============================================================================
#
#         FILE:  create_json_schema.pl
#
#        USAGE:  ./create_json_schema.pl  
#
#  DESCRIPTION:  
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  YOUR NAME (), 
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  02/11/22 14:02:57
#     REVISION:  ---
#===============================================================================

use v5.20;
use strict;
use warnings;
use JSON;
use Data::Dumper;

sub json { shift->{'__json'} ||= JSON->new->utf8->pretty; }
sub data {
    return shift->{'__data'} ||= {
        weight => {
            timestamp => 0,
            weight => 0,
        },
        workout => {
            timestamp => 0,
            crunches  => {
                right   => {
                    low  => 0,
                    high => 0,
                },
                front   =>   {
                    low  => 0,
                    high => 0,
                },
                left    =>   {
                    low  => 0,
                    high => 0,
                },
            },
            stepper  => {
                distance => 0,
                speed    => 0,
                cals     => 0,
                length  =>  0,
            },
        }


    }
}
(bless {}, __PACKAGE__)->main();

sub main {
    my $self = shift;
    say $self->json->encode($self->data);

    return 0;
}

