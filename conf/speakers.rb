RubyConfUA::Speakers.list do
  speaker "Alexander Kotlyarskiy" do
    bio     "Software developer. Student. Ruby fan"
    github  "frantic"
    twitter "alex_frantic"
    site    "frantic.im"

    talk "TDDing EventMachinized code"
    description <<-EOF
      EventMachine is an awesome gem for building high performance and scalable
      applications with Ruby using reactor pattern. But how to test evented code
      without callbacks spaghetti? In this report I'll try to share some tips,
      tricks and gotchas.
    EOF
    lang :ruby
  end
end