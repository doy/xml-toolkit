package XML::AIML::Template;
use Moose;
use MooseX::AttributeHelpers;
use XML::Toolkit;

has 'random_collection' => (
    isa         => 'ArrayRef[XML::AIML::Random]',
    is          => 'ro',
    traits      => ['XML'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'random' },
    description => { sort_order => 0, },
);
has 'text' => (
    isa         => 'Str',
    is          => 'rw',
    traits      => ['XML'],
    description => { sort_order => 1, },
);

no Moose;
1;
__END__