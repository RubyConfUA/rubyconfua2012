# RubyConfUA repository

[![Build Status](https://secure.travis-ci.org/RubyConfUA/rubyconfua2012.png)](http://travis-ci.org/RubyConfUA/rubyconfua2012)

This is main repository for RubyConfUA organization. If you want to propose your sponsorship, your presentation or share some ideas, just fork this repo and make pull request.

## Forking

If you want to be a speaker: fork this project, add your talk proposition to `conf/speakers.rb` and make pull request. We contact you as soon as possible.
If you have an ideas about format of conference or anything else: put your idea to the `conf/ideas.md` and make pull request. After that, we can discuss your idea in pull request comments.
If you already in `conf/speakers.rb` you can put your keynote to `talks` directory.

## Speaker DSL

You can add yourself as a speaker to `conf/speakers.rb` with next syntax:

```ruby
speaker "John Doe" do
  bio     "Rails developer since 1865, CTO at JD Corp. Example speaker"
  github  "JDoe"
  twitter "JDoe"
  site    "example.com"

  talk "Sample conference talk"
  description <<-EOF
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  EOF
  lang :en
end
```