class Book < ActiveResource::Base
  # you can also just set this to an empty string, it doesn't
  # really matter since we don't yet have a service backend
  self.site = 'http://some.service.provider.com'
end