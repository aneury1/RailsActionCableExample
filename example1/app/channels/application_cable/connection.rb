module ApplicationCable
  class Connection < ActionCable::Connection::Base
  # by default Rails logs all error but it could be change by
  # rescue_from StandardError, with: :report_error #this is a function that handle one exceptional parameter.
    def connect
        @current_user  = find_verified_user
    end

    private

    def find_verified_user
      '1234'
    end

  end
end
