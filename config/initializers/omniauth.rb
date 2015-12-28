Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, "485103155007447", "c34da6e152e667b4992669b205dfac39", :scope => "email,relationship_details"
end