# homebrew-gravlax-perso

This is a demo repository for the creation of a homebrew Formula and Tap.

## How do I install these formulae?

In the shell:
```sh
brew install alexgravx/<tap>/<formula>                  # Direct
```

```sh
brew tap alexgravx/<tap>                                # Indirect
brew install <formula>
```

Or, in a `brew bundle` ~ `Brewfile`:

```ruby
tap "alexgravx/test"
brew "<formula>"
```

Here, we can run the command like this:

```sh
brew install alexgravx/gravlax-perso/gravlax-perso      # install
gravlax-perso                                           # run
```

## Create a new tap and formula

Use: `brew tap-new $YOUR_GITHUB_USERNAME/<homebrew-tap-name>`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://idocs.brew.sh).

Also see [Create tap](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)
and [Tap with github workflow](https://brew.sh/2020/11/18/homebrew-tap-with-bottles-uploaded-to-github-releases/)
