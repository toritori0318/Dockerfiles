package MyWeb::App;
use Dancer2;
use Redis;

our $VERSION = '0.1';

my $redis_host = $ENV{REDIS_HOST} || 'localhost';
my $redis_port = $ENV{REDIS_PORT} || '6379';
my $redis = Redis->new(server => "${redis_host}:${redis_port}");

get '/' => sub {
    $redis->incr('hits');
    return sprintf("Hello Dancer! I have been seen %s times.", $redis->get('hits'));
};

true;
