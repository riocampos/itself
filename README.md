# itself

This method return reciever's `self` .

## Impressed by

* [Feature #6373: public #self - ruby-trunk - Ruby Issue Tracking System](https://bugs.ruby-lang.org/issues/6373)
* [object.c: Object#itsef · 0a0160d · ruby/ruby](https://github.com/ruby/ruby/commit/0a0160d)

## Requirement
* <= Ruby 2.1.2 (`Kernel#itself` will add MRI from version 2.2.0)

## Usage
You use `&:itself` on Enumerable method mainly.

```
[1, 2, 3, 4, 5, 1, 2, 2, 3].group_by(&:itself)
#=> {1=>[1, 1], 2=>[2, 2, 2], 3=>[3, 3], 4=>[4], 5=>[5]}

"string".each_char.sort_by(&:itself)
#=> ["g", "i", "n", "r", "s", "t"]
```
## Install
```
$ gem install itself
```
## Contributing to itself
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 riocampos. See LICENSE.txt for
further details.

