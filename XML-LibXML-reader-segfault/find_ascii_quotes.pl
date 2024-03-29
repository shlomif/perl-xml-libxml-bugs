#!/usr/bin/perl

use strict;
use warnings;

use XML::LibXML;
use XML::LibXML::Reader;
use XML::LibXML::XPathContext;
use Getopt::Long;

my $out_fn;

binmode STDOUT, ":utf8";

# Input the filename
foreach my $filename (@ARGV)
{
    my $reader = XML::LibXML::Reader->new(
        location => $filename, load_ext_dtd => 1, 'no_network' => 1,
    ) or die "Cannot read '$filename'.";
    while ($reader->read())
    {
        if ($reader->nodeType() == XML_TEXT_NODE)
        {
            my $data = $reader->value;
        }
    }

}
