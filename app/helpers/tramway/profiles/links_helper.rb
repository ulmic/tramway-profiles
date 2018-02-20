module Tramway::Profiles::LinksHelper
  def profile_link(profile)
    send profile.network_name, profile.uid
  end

  private

  def vk(uid)
    profile_link_template uid, "https://vk.com/#{uid}", :vk
  end

  def facebook(uid)
    profile_link_template uid, "https://facebook.com/#{uid}", :facebook
  end

  def twitter(uid)
    profile_link_template uid, "https://twitter.com/#{uid}", :twitter
  end

  def profile_link_template(uid, link, icon)
    link_to link, target: '_blank' do
      concat fa_icon icon
      concat ' '
      concat uid
    end
  end
end
