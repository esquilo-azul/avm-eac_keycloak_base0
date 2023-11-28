# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module Avm
  module EacKeycloakBase0
    class Api
      REALM_NAME = 'master'

      # @return [Class<KeycloakAdmin>]
      def keycloak_admin
        @keycloak_admin ||= begin
          keycloak_admin_configure
          ::KeycloakAdmin
        end
      end

      # @return [void]
      def keycloak_admin_configure
        ::KeycloakAdmin.configure do |config|
          config.use_service_account = false
          config.server_url          = root_url
          config.server_domain       = 'trf1.jus.br'
          config.client_realm_name   = REALM_NAME
          config.username            = username
          config.password            = password
          config.rest_client_options = { verify_ssl: OpenSSL::SSL::VERIFY_NONE }
        end
      end
    end
  end
end
