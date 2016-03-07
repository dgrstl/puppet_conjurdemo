Puppet::Functions.create_function(:conjur_secret) do
  dispatch :resolve do
    param 'String', :key
  end

  def resolve(key)
    require 'conjur/cli'
    require 'yaml'

    Conjur::Config.load
    Conjur::Config.apply
    api = Conjur::Authn.connect
    variable = api.variable key
    variable.value
  end
end
