#!/usr/bin/env perl

use Test::More tests => 10;

BEGIN {
    use_ok('DBI');
    use_ok('File::Copy');
    use_ok('HTML::Entities');
    use_ok('File::Spec');
    use_ok('App::ZofCMS');
    use_ok('App::ZofCMS::Plugin::Base');
    use_ok('HTML::Template');
    use_ok('Image::Size');
    use_ok('Image::Resize');
	use_ok( 'App::ZofCMS::Plugin::ImageGallery' );
}

diag( "Testing App::ZofCMS::Plugin::ImageGallery $App::ZofCMS::Plugin::ImageGallery::VERSION, Perl $], $^X" );
