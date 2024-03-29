module Pipedrive
  class Client < Base
    # This class doesn't represent anything on the API
    # so we undefine the methods that could get us into
    # trouble by attempting to talk to the server.

    undef get
    undef resource_path

    def metrics
      metrics = {}

      %i{activities deals organizations persons}.each do |source|
        metrics[source] = send(source).metrics
      end

      metrics
    end

    def validate_authorization
      begin
        users.metrics
        true
      rescue AuthenticationError
        false
      end
    end

    def method_missing(name, options, &block)
      begin
        resource(name, options)
      rescue NameError
        # Since we're silently loading a Resource Class
        # we transform this into a NoMethodError to
        # mask that. Not sure if this is the best idea ever,
        # but I like it for now.
        raise NoMethodError, "undefined method '#{name}' for #{self}"
      end
    end
  end
end
