# README

## Control Plane deployment

Relies on `cpl` gem from here:
https://github.com/shakacode/heroku-to-control-plane

So first follow the installation steps from here:
https://github.com/shakacode/heroku-to-control-plane#installation

And then install the gem: `gem install cpl`

All the initial setup instructions can be found here:
https://github.com/shakacode/heroku-to-control-plane#example-cli-flow-for-application-builddeployment

### Promoting code upgrades

```bash
# Build and push new image with sequential image tagging, e.g. 'tourney_123'
cpl build-image -a tourney

# OR
# Build and push with sequential image tagging and commit SHA, e.g. 'tourney_123_ABCD'
cpl build-image -a tourney --commit ABCD

# Run database migrations (or other release tasks) with latest image,
# while app is still running on previous image.
# This is analogous to the release phase.
cpl run:detached rails db:migrate -a tourney --image latest

# Deploy latest image to app
cpl deploy-image -a tourney
```

## TODO

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* ...
