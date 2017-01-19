Rails.application.routes.draw do
  mount NoFollowExternalLinks::Engine => "/no_follow_external_links"
end
