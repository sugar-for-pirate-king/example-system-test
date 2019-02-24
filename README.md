## Stack
- ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
- rails 5.2.2
- sqlite 1.3.6

## How to install
```
$> git clone https://github.com/sugar-for-pirate-king/example-system-test
$> cd example-system-test
$> bundle
$> rails db:migrate
$> rspec
$> rails s
```

## Specs
```
...
> spec
  > factories
    |- products.rb
  > models
    |- products_spec.rb
  > system
    > product
      |- create_spec.rb
...
```

