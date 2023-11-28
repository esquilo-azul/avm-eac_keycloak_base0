# frozen_string_literal: true

require 'avm/eac_keycloak_base0/api'
require 'avm/eac_webapp_base0/instances/base'
require 'eac_ruby_utils/core_ext'
require 'keycloak-admin'

module Avm
  module EacKeycloakBase0
    module Instances
      class Base < ::Avm::EacWebappBase0::Instances::Base
        # @return [Avm::EacKeycloakBase0::Api]
        def api
          @api ||= ::Avm::EacKeycloakBase0::Api.new(web_url, web_username, web_password)
        end
      end
    end
  end
end
