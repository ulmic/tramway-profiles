class Tramway::Profiles::SocialNetwork < ::Tramway::Core::ApplicationRecord
  belongs_to :record, polymorphic: true

  enumerize :network_name, in: [ :vk, :facebook, :twitter ]
  enumerize :record_type, in: ::Tramway::Profiles.records
end
