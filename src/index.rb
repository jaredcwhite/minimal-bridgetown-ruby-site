###ruby
front_matter do
  layout :default
  title "Hello World!"
end
###

### Setup

def para(input = nil, centered: false)
  @output ||= ""
  input = "&nbsp;" unless input
  alignment = centered ? %( style="text-align:center") : nil
  @output << "<p#{alignment}>#{input}</p>"
end

%i( em strong ).each do |tag|
  singleton_class.define_method tag do |input|
    "<#{tag}>#{input}</#{tag}>"
  end
end

bridgetown = %(<a href="https://www.bridgetownrb.com">Bridgetown</a>)

### Content

para em("Powered by #{bridgetown}"), centered: true

para

para "This is an #{strong("experiment")}: what if you could #{em("build an entire website")} out of #{strong("pure Ruby")}?"

para "What does it mean when you can rapidly prototype data and content together on a file-by-file basis? Sure, that starts to sound a lot like old-school PHP. But you know what? That's sort of what JSX is. Single-file components, etc. Why should JavaScript people have all the fun? 😄"

para "Look, I'm all for #{em("seperation of concerns")} and employing real template and content formats for what they're good at."

para "But there's no denying, sometimes you just want to hack a bunch of code together and spit a webpage out at the end of the day." << ' ' << strong("This gets the job done.")

### That's all folks!

@output