class ApiController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
end

# Fetch Request Options
# We will also want to add some additional options to our fetch requests so that they are handled by Rails effectively.
#
# Let's say we are reviewing fruits. We want to make a request to POST a new fruit, so that we can review this fruit in the future.
#
# With POST requests in particular, its important we have the right options passed along.Make sure that you have both the credentials option and headers options below.
#
# fetch(`/api/v1/fruits.json`, {
#       credentials: 'same-origin',
#       method: 'POST',
#       body: JSON.stringify(formPayload),
#       headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }
#     })
#     ...
# This way, our Rails application knows to trust this fetch request, and know that its from our frontend React application.
#
# Note also that because of the earlier protect_from_forgery step, our urls will have to end in .json. This won't change your routes.rb, but it will have to be added in your fetch paths!
