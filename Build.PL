use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::ImageGallery',
    license             => 'perl',
    dist_author         => q|Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/App/ZofCMS/Plugin/ImageGallery.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => 0.0104,
    },
    requires => {
        'File::Copy'                => 2.09,
        'App::ZofCMS'               => 0.0111,
        'App::ZofCMS::Plugin::Base' => 0.0102,
        'HTML::Template'            => 2.9,
        'Image::Size'               => 3.100001,
        'Image::Resize'             => 0.5,
        'File::Spec'                => 3.2701,
        'DBI'                       => 1.602,
        'HTML::Entities'            => 1.35,
        'perl' => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-ImageGallery-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
