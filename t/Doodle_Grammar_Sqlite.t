use 5.014;

use Do;
use Test::Auto;
use Test::More;

=name

Doodle::Grammar::Sqlite

=cut

=abstract

Doodle Grammar For SQLite

=cut

=includes

method: create_column
method: create_index
method: create_table
method: delete_column
method: delete_index
method: delete_table
method: rename_table
method: type_binary
method: type_boolean
method: type_char
method: type_date
method: type_datetime
method: type_datetime_tz
method: type_decimal
method: type_double
method: type_enum
method: type_float
method: type_integer
method: type_integer_big
method: type_integer_big_unsigned
method: type_integer_medium
method: type_integer_medium_unsigned
method: type_integer_small
method: type_integer_small_unsigned
method: type_integer_tiny
method: type_integer_tiny_unsigned
method: type_integer_unsigned
method: type_json
method: type_string
method: type_text
method: type_text_long
method: type_text_medium
method: type_time
method: type_time_tz
method: type_timestamp
method: type_timestamp_tz
method: type_uuid
method: update_column
method: wrap

=cut

=synopsis

  use Doodle::Grammar::Sqlite;

  my $self = Doodle::Grammar::Sqlite->new;

=cut

=inherits

Doodle::Grammar

=cut

=description

This provide determines how command classes should be interpreted to produce
the correct DDL statements for Sqlite.

=cut

=libraries

Doodle::Library

=cut

=method create_column

Returns the SQL statement for the create column command.

=cut

=signature create_column

create_column(Command $command) : Str

=cut

=example-1 create_column

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->create;

  $self->create_column($command);

  # alter table "users" add column "id" integer primary key

=cut

=method create_index

Returns the SQL statement for the create index command.

=cut

=signature create_index

create_index(Command $command) : Str

=cut

=example-1 create_index

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $i = $t->index(columns => ['id']);

  my $command = $i->create;

  $self->create_index($command);

  # create index "indx_users_id" on "users" ("id")

=cut

=method create_table

Returns the SQL statement for the create table command.

=cut

=signature create_table

create_table(Command $command) : Str

=cut

=example-1 create_table

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->create;

  $self->create_table($command);

  # create table "users" ("data" varchar)

=cut

=method delete_column

Returns the SQL statement for the delete column command.

=cut

=signature delete_column

delete_column(Command $command) : Str

=cut

=example-1 delete_column

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->delete;

  $self->delete_column($command);

  # alter table "users" drop column "id"

=cut

=method delete_index

Returns the SQL statement for the delete index command.

=cut

=signature delete_index

delete_index(Command $command) : Str

=cut

=example-1 delete_index

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $i = $t->index(columns => ['id']);

  my $command = $i->delete;

  $self->delete_index($command);

  # drop index "indx_users_id"

=cut

=method delete_table

Returns the SQL statement for the delete table command.

=cut

=signature delete_table

delete_table(Command $command) : Str

=cut

=example-1 delete_table

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->delete;

  $self->delete_table($command);

  # drop table "users"

=cut

=method rename_table

Returns the SQL statement for the rename table command.

=cut

=signature rename_table

rename_table(Command $command) : Str

=cut

=example-1 rename_table

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->rename('people');

  $self->rename_table($command);

  # alter table "users" rename to "people"

=cut

=method type_binary

Returns the type expression for a binary column.

=cut

=signature type_binary

type_binary(Column $column) : Str

=cut

=example-1 type_binary

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('binary');

  $self->type_binary($column);

  # blob

=cut

=method type_boolean

Returns the type expression for a boolean column.

=cut

=signature type_boolean

type_boolean(Column $column) : Str

=cut

=example-1 type_boolean

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('boolean');

  $self->type_boolean($column);

  # tinyint(1)

=cut

=method type_char

Returns the type expression for a char column.

=cut

=signature type_char

type_char(Column $column) : Str

=cut

=example-1 type_char

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('char');

  $self->type_char($column);

  # varchar

=cut

=method type_date

Returns the type expression for a date column.

=cut

=signature type_date

type_date(Column $column) : Str

=cut

=example-1 type_date

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('date');

  $self->type_date($column);

  # date

=cut

=method type_datetime

Returns the type expression for a datetime column.

=cut

=signature type_datetime

type_datetime(Column $column) : Str

=cut

=example-1 type_datetime

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('datetime');

  $self->type_datetime($column);

  # datetime

=cut

=method type_datetime_tz

Returns the type expression for a datetime_tz column.

=cut

=signature type_datetime_tz

type_datetime_tz(Column $column) : Str

=cut

=example-1 type_datetime_tz

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('datetime_tz');

  $self->type_datetime_tz($column);

  # datetime

=cut

=method type_decimal

Returns the type expression for a decimal column.

=cut

=signature type_decimal

type_decimal(Column $column) : Str

=cut

=example-1 type_decimal

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('decimal');

  $self->type_decimal($column);

  # numeric

=cut

=method type_double

Returns the type expression for a double column.

=cut

=signature type_double

type_double(Column $column) : Str

=cut

=example-1 type_double

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('double');

  $self->type_double($column);

  # float

=cut

=method type_enum

Returns the type expression for a enum column.

=cut

=signature type_enum

type_enum(Column $column) : Str

=cut

=example-1 type_enum

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('enum');

  $self->type_enum($column);

  # varchar

=cut

=method type_float

Returns the type expression for a float column.

=cut

=signature type_float

type_float(Column $column) : Str

=cut

=example-1 type_float

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('float');

  $self->type_float($column);

  # float

=cut

=method type_integer

Returns the type expression for a integer column.

=cut

=signature type_integer

type_integer(Column $column) : Str

=cut

=example-1 type_integer

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer');

  $self->type_integer($column);

  # integer

=cut

=method type_integer_big

Returns the type expression for a integer_big column.

=cut

=signature type_integer_big

type_integer_big(Column $column) : Str

=cut

=example-1 type_integer_big

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_big');

  $self->type_integer_big($column);

  # integer

=cut

=method type_integer_big_unsigned

Returns the type expression for a integer_big_unsigned column.

=cut

=signature type_integer_big_unsigned

type_integer_big_unsigned(Column $column) : Str

=cut

=example-1 type_integer_big_unsigned

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_big_unsigned');

  $self->type_integer_big_unsigned($column);

  # integer

=cut

=method type_integer_medium

Returns the type expression for a integer_medium column.

=cut

=signature type_integer_medium

type_integer_medium(Column $column) : Str

=cut

=example-1 type_integer_medium

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_medium');

  $self->type_integer_medium($column);

  # integer

=cut

=method type_integer_medium_unsigned

Returns the type expression for a integer_medium_unsigned column.

=cut

=signature type_integer_medium_unsigned

type_integer_medium_unsigned(Column $column) : Str

=cut

=example-1 type_integer_medium_unsigned

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_medium_unsigned');

  $self->type_integer_medium_unsigned($column);

  # integer

=cut

=method type_integer_small

Returns the type expression for a integer_small column.

=cut

=signature type_integer_small

type_integer_small(Column $column) : Str

=cut

=example-1 type_integer_small

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_small');

  $self->type_integer_small($column);

  # integer

=cut

=method type_integer_small_unsigned

Returns the type expression for a integer_small_unsigned column.

=cut

=signature type_integer_small_unsigned

type_integer_small_unsigned(Column $column) : Str

=cut

=example-1 type_integer_small_unsigned

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_small_unsigned');

  $self->type_integer_small_unsigned($column);

  # integer

=cut

=method type_integer_tiny

Returns the type expression for a integer_tiny column.

=cut

=signature type_integer_tiny

type_integer_tiny(Column $column) : Str

=cut

=example-1 type_integer_tiny

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_tiny');

  $self->type_integer_tiny($column);

  # integer

=cut

=method type_integer_tiny_unsigned

Returns the type expression for a integer_tiny_unsigned column.

=cut

=signature type_integer_tiny_unsigned

type_integer_tiny_unsigned(Column $column) : Str

=cut

=example-1 type_integer_tiny_unsigned

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_tiny_unsigned');

  $self->type_integer_tiny_unsigned($column);

  # integer

=cut

=method type_integer_unsigned

Returns the type expression for a integer_unsigned column.

=cut

=signature type_integer_unsigned

type_integer_unsigned(Column $column) : Str

=cut

=example-1 type_integer_unsigned

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('integer_unsigned');

  $self->type_integer_unsigned($column);

  # integer

=cut

=method type_json

Returns the type expression for a json column.

=cut

=signature type_json

type_json(Column $column) : Str

=cut

=example-1 type_json

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('json');

  $self->type_json($column);

  # text

=cut

=method type_string

Returns the type expression for a string column.

=cut

=signature type_string

type_string(Column $column) : Str

=cut

=example-1 type_string

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('string');

  $self->type_string($column);

  # varchar

=cut

=method type_text

Returns the type expression for a text column.

=cut

=signature type_text

type_text(Column $column) : Str

=cut

=example-1 type_text

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('text');

  $self->type_text($column);

  # text

=cut

=method type_text_long

Returns the type expression for a text_long column.

=cut

=signature type_text_long

type_text_long(Column $column) : Str

=cut

=example-1 type_text_long

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('text_long');

  $self->type_text_long($column);

  # text

=cut

=method type_text_medium

Returns the type expression for a text_medium column.

=cut

=signature type_text_medium

type_text_medium(Column $column) : Str

=cut

=example-1 type_text_medium

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('text_medium');

  $self->type_text_medium($column);

  # text

=cut

=method type_time

Returns the type expression for a time column.

=cut

=signature type_time

type_time(Column $column) : Str

=cut

=example-1 type_time

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('time');

  $self->type_time($column);

  # time

=cut

=method type_time_tz

Returns the type expression for a time_tz column.

=cut

=signature type_time_tz

type_time_tz(Column $column) : Str

=cut

=example-1 type_time_tz

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('time_tz');

  $self->type_time_tz($column);

  # time

=cut

=method type_timestamp

Returns the type expression for a timestamp column.

=cut

=signature type_timestamp

type_timestamp(Column $column) : Str

=cut

=example-1 type_timestamp

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('timestamp');

  $self->type_timestamp($column);

  # datetime

=cut

=method type_timestamp_tz

Returns the type expression for a timestamp_tz column.

=cut

=signature type_timestamp_tz

type_timestamp_tz(Column $column) : Str

=cut

=example-1 type_timestamp_tz

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('timestamp_tz');

  $self->type_timestamp_tz($column);

  # datetime

=cut

=method type_uuid

Returns the type expression for a uuid column.

=cut

=signature type_uuid

type_uuid(Column $column) : Str

=cut

=example-1 type_uuid

  # given: synopsis

  use Doodle;

  my $ddl = Doodle->new;
  my $column = $ddl->table('users')->column('uuid');

  $self->type_uuid($column);

  # varchar

=cut

=method update_column

Returns the SQL statement for the update column command.

=cut

=signature update_column

update_column(Command $command) : Str

=cut

=example-1 update_column

  # given: synopsis

  use Doodle;

  my $d = Doodle->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->update;

  $self->update_column($command);

  # alter table [users] alter column [id] type integer

  $command = $c->update(set => 'not null');

  $self->update_column($command);

  # alter table [users] alter column [id] set not null

=cut

=method wrap

Returns a wrapped SQL identifier.

=cut

=signature wrap

wrap(Str $arg) : Str

=cut

=example-1 wrap

  # given: synopsis

  my $wrapped = $self->wrap('data');

  # "data"

=cut

package main;

my $test = Test::Auto->new(__FILE__);

my $subtests = $test->subtests->standard;

$subtests->synopsis(fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'create_column', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'create_index', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'create_table', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'delete_column', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'delete_index', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'delete_table', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'rename_table', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'type_binary', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'blob', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_boolean', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'tinyint(1)', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_char', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'varchar', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_date', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'date', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_datetime', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'datetime', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_datetime_tz', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'datetime', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_decimal', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'numeric', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_double', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'float', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_enum', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'varchar', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_float', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'float', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_big', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_big_unsigned', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_medium', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_medium_unsigned', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_small', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_small_unsigned', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_tiny', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_tiny_unsigned', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_integer_unsigned', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'integer', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_json', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'text', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_string', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'varchar', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_text', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'text', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_text_long', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'text', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_text_medium', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'text', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_time', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'time', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_time_tz', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'time', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_timestamp', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'datetime', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_timestamp_tz', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'datetime', 'sql ok';

  $result;
});

$subtests->example(-1, 'type_uuid', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';
  is $result, 'varchar', 'sql ok';

  $result;
});

$subtests->example(-1, 'update_column', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

$subtests->example(-1, 'wrap', 'method', fun($tryable) {
  ok my $result = $tryable->result, 'result ok';

  $result;
});

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_time_tz.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_time_tz';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->time_tz('data');
  my $s = $g->type_time_tz($c);

  is $s, 'time';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_big_unsigned.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_big_unsigned';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_big_unsigned('data');
  my $s = $g->type_integer_big_unsigned($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_text.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_text';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->text('data');
  my $s = $g->type_text($c);

  is $s, 'text';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_text_long.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_text_long';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->text_long('data');
  my $s = $g->type_text_long($c);

  is $s, 'text';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_rename_table.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'rename_table';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->rename('people');

  my $sql = $g->rename_table($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{alter table "users" rename to "people"};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_uuid.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_uuid';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->uuid('data');
  my $s = $g->type_uuid($c);

  is $s, 'varchar';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_medium_unsigned.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_medium_unsigned';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_medium_unsigned('data');
  my $s = $g->type_integer_medium_unsigned($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_delete_index.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'delete_index';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $i = $t->index(columns => ['id']);

  my $command = $i->delete;

  my $sql = $g->delete_index($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{drop index "indx_users_id"};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_small_unsigned.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_small_unsigned';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_small_unsigned('data');
  my $s = $g->type_integer_small_unsigned($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_create_table.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'create_table';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->create;

  my $sql = $g->create_table($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{create table "users" ("data" varchar)};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_delete_column.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'delete_column';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->delete;

  my $sql = $g->delete_column($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{alter table "users" drop column "id"};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_boolean.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_boolean';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->boolean('data');
  my $s = $g->type_boolean($c);

  is $s, 'tinyint(1)';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_datetime_tz.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_datetime_tz';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->datetime_tz('data');
  my $s = $g->type_datetime_tz($c);

  is $s, 'datetime';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_unsigned.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_unsigned';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_unsigned('data');
  my $s = $g->type_integer_unsigned($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_timestamp.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_timestamp';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->timestamp('data');
  my $s = $g->type_timestamp($c);

  is $s, 'datetime';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_create_column.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'create_column';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->create;

  my $sql = $g->create_column($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{alter table "users" add column "id" integer primary key};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_float.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_float';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->float('data');
  my $s = $g->type_float($c);

  is $s, 'float';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_time.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_time';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->time('data');
  my $s = $g->type_time($c);

  is $s, 'time';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer('data');
  my $s = $g->type_integer($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_timestamp_tz.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_timestamp_tz';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->timestamp_tz('data');
  my $s = $g->type_timestamp_tz($c);

  is $s, 'datetime';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_update_column.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'update_column';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->primary('id');

  my $command = $c->update;

  my $sql = $g->update_column($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{alter table "users" alter column "id" type integer};

  $command = $c->update(set => 'not null');
  $sql = $g->update_column($command);

  isa_ok $command, 'Doodle::Command';

  is $sql, qq{alter table "users" alter column "id" set not null};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_text_medium.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_text_medium';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->text_medium('data');
  my $s = $g->type_text_medium($c);

  is $s, 'text';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_create_index.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'create_index';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $i = $t->index(columns => ['id']);

  my $command = $i->create;

  my $sql = $g->create_index($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{create index "indx_users_id" on "users" ("id")};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_char.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_char';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->char('data');
  my $s = $g->type_char($c);

  is $s, 'varchar';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_decimal.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_decimal';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->decimal('data');
  my $s = $g->type_decimal($c);

  is $s, 'numeric';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_date.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_date';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->date('data');
  my $s = $g->type_date($c);

  is $s, 'date';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_delete_table.t', fun() {
  use Doodle;
  use Doodle::Grammar::Sqlite;

  use_ok 'Doodle::Grammar::Sqlite', 'delete_table';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->column('data');

  my $command = $t->delete;

  my $sql = $g->delete_table($command);

  isa_ok $g, 'Doodle::Grammar::Sqlite';
  isa_ok $command, 'Doodle::Command';

  is $sql, qq{drop table "users"};

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_json.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_json';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->json('data');
  my $s = $g->type_json($c);

  is $s, 'text';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_medium.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_medium';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_medium('data');
  my $s = $g->type_integer_medium($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_string.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_string';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->string('data');
  my $s = $g->type_string($c);

  is $s, 'varchar';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_enum.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_enum';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->enum('data');
  my $s = $g->type_enum($c);

  is $s, 'varchar';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_tiny_unsigned.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_tiny_unsigned';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_tiny_unsigned('data');
  my $s = $g->type_integer_tiny_unsigned($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_datetime.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_datetime';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->datetime('data');
  my $s = $g->type_datetime($c);

  is $s, 'datetime';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_tiny.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_tiny';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_tiny('data');
  my $s = $g->type_integer_tiny($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_double.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_double';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->double('data');
  my $s = $g->type_double($c);

  is $s, 'float';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_wrap.t', fun() {
  use_ok 'Doodle::Grammar::Sqlite', 'wrap';

  use Doodle::Grammar::Sqlite;

  my $g = Doodle::Grammar::Sqlite->new;

  isa_ok $g, 'Doodle::Grammar::Sqlite';

  is $g->wrap('data'), '"data"';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_small.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_small';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_small('data');
  my $s = $g->type_integer_small($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_integer_big.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_integer_big';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->integer_big('data');
  my $s = $g->type_integer_big($c);

  is $s, 'integer';

  ok 1 and done_testing;
};

subtest 't/0.05/can/Doodle_Grammar_Sqlite_type_binary.t', fun() {
  use Doodle;

  use_ok 'Doodle::Grammar::Sqlite', 'type_binary';

  my $d = Doodle->new;
  my $g = Doodle::Grammar::Sqlite->new;
  my $t = $d->table('users');
  my $c = $t->binary('data');
  my $s = $g->type_binary($c);

  is $s, 'blob';

  ok 1 and done_testing;
};

ok 1 and done_testing;
