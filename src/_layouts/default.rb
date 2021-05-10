logo = site.resources.find { |resource| resource.data.slug == "logo" }
unless logo.output
  # FIXME: should be able to transform a resource even when it's not configured for output...
  logo.transformer.final_ext
  logo.transformer.process!
end

styles = <<~CSS
  body {
    font-family: var(--sl-font-sans);
    font-size: 18px;
    line-height: var(--sl-line-height-dense);
    margin: 20px;
  }
  header, main, footer {
    max-width: calc(var(--sl-spacing-xxxx-large) * 12);
    margin: var(--sl-spacing-xxxx-large) auto;
  }
  header, footer {
    text-align: center;
  }
  header svg {
    width: 30px;
  }
  footer {
    padding-top: var(--sl-spacing-xxxx-large);
    color: var(--sl-color-gray-500);
  }

  a { color: var(--sl-color-primary-800) }
CSS

<<~HTML
  <!doctype html>
  <html lang="en">
    <head>
      <meta charset="utf-8" />
      <meta
        name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
      />
      <title>#{site.metadata.title}</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.39/dist/themes/base.css">
      <style>#{styles}</style>
      <script type="module" src="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.39/dist/shoelace.js"></script>
    </head>
    <body>
      <header>
        <h1>
          #{logo.output}
          #{page.data.title}
        </h1>
      </header>

      <main>
        #{page.content}
      </main>

      <footer>
        Ruby FTW! <a href="https://github.com/jaredcwhite/minimal-bridgetown-ruby-site">Check out the GitHub repo here</a>.
      </footer>
    </body>
  </html>
HTML