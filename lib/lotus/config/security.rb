module Lotus
  module Config
    # Security policies are stored here.
    #
    # @since x.x.x
    class Security
      # @since x.x.x
      # @api private
      #
      # @see Lotus::Loader#_configure_controller_framework!
      X_FRAME_OPTIONS_HEADER = 'X-Frame-Options'.freeze

      # @since x.x.x
      # @api private
      #
      # @see Lotus::Config::Security#initialize
      X_FRAME_OPTIONS_DEFAULT = 'DENY'.freeze

      # @since x.x.x
      # @api private
      #
      # @see Lotus::Loader#_configure_controller_framework!
      CONTENT_POLICY_SECURITY_HEADER = 'Content-Security-Policy'.freeze

      # @since x.x.x
      # @api private
      #
      # @see Lotus::Config::Security#initialize
      CONTENT_POLICY_SECURITY_DEFAULT = "connect-src 'self'; script-src 'self';".freeze

      # Set security headers with default values
      #
      # @since x.x.x
      # @api private
      def initialize
        @x_frame_options         = X_FRAME_OPTIONS_DEFAULT
        @content_policy_security = CONTENT_POLICY_SECURITY_DEFAULT
      end

      # X-Frame-Options headers' value
      #
      # @overload x_frame_options(value)
      #   Sets the given value
      #   @param value [String] for X-Frame-Options header.
      #
      # @overload x_frame_options
      #   Gets the value
      #   @return [String] X-Frame-Options header's value
      #
      # @since x.x.x
      def x_frame_options(value = nil)
        if value.nil?
          @x_frame_options
        else
          @x_frame_options = value
        end
      end


      # Content-Policy-Security headers' value
      #
      # @overload content_policy_security(value)
      #   Sets the given value
      #   @param value [String] for Content-Security-Policy header.
      #
      # @overload content_policy_security
      #   Gets the value
      #   @return [String] Content-Security-Policy header's value
      #
      # @since x.x.x
      def content_policy_security(value = nil)
        if value.nil?
          @content_policy_security
        else
          @content_policy_security = value
        end
      end
    end
  end
end