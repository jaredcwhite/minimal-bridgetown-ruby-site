# Minimal Bridgetown Repo with Ruby-only Pages

[![Demo Site](https://img.shields.io/badge/Demo%20Site-darkgreen?style=for-the-badge&logo=safari)](https://minimal-bridgetown-ruby-site.onrender.com/) &nbsp; [![Ruby Powered](https://img.shields.io/badge/Ruby%20Powered-darkred?style=for-the-badge&logo=ruby)](https://www.bridgetownrb.com)

No `.html`, `.md`, `.liquid`, `.erb`, etc. Only pure `.rb` files for everything.

Is this the way you should build a website? Probably not! But as a fun experiment, it's pretty rad.

Requires the **resource** content engine configured and latest release of [Bridgetown](https://www.bridgetownrb.com) v0.21 or higher.

Design tokens provided by [Shoelace](https://shoelace.style).

## Installation

Requires Ruby 2.5 or higher (Ruby 2.7 or 3.0 recommended).

```sh
bundle install

bundle exec bridgetown serve

# or to deploy output folder:
bundle exec bridgetown build
```

## Fun Fact

I built this entire demo using GitHub Codespaces. Look Ma, no computer required! (Well, except for the one running the browser to connect to Codespaces…)
