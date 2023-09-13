# frozen_string_literal: true

# ApplicationMailbox
class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing 'support@example.com' => :support
end
