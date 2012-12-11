Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "NQqHRwLsdZSyva7Vf5Lhg", "EtgfVcMhLXS6OqHGvpTZy6Ts3009EmRfdL36AUmo0"
  provider :github, "00f70fb9faa84372ddfd", "9223623e665163370c6fa734b4447b528d5b5e1f"
  provider :facebook, "375843589176476", "275f4035665271aaf61cd8f057021e03"
end
