# RIFE: Rails Interactive Fiction Engine

RIFE is the easiest way for you to get started writing interactive fiction for the browser.

## Writing a Game
Games are defined in `script.yml`:

```YAML
---
  start:
    - It was a dark and stormy night.
    - Sophie: Sure is dark isn't it?
    - Klaus: Do you not enjoy storms?
    - Sophie: I could use a Talisker Storm right about now.
```

Every script must have a `start` label which contains an array of dialogue lines.

## Developing RIFE

### Requirements
* Ruby 2.3.1
* Rails 5.0.0
* npm

RIFE does not use a database.

### Testing
`rake` runs both `rspec -fd` and `rails test`

### Development
See our public [Pivotal Tracker backlog](https://www.pivotaltracker.com/n/projects/1586687)
for a list of current and future features.

### Deploying
Currently there are no live versions of the app deployed, but you can push your
app to your favorite PaaS with no additional configuration.
