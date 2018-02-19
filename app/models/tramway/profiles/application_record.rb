module Tramway
  module Profiles
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
