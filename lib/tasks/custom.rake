# frozen_string_literal: true

namespace :custom do
  desc "Modifies confirmation_token and sets confirmed_at"
  task :accept, [:email] => :environment do |_t, args|
    email = args[:email]
    if email.blank?
      puts "Please provide an email address."
      exit 1
    end

    user = Decidim::User.find_by(email:)

    if user
      user.update(confirmation_token: nil, confirmed_at: Time.current)
      puts "The user with email #{email} has been confirmed."
    else
      puts "No user found with the email: #{email}."
    end
  end

  desc "Toggles the admin field"
  task :admin, [:email] => :environment do |t, args|
    email = args[:email]
    if email.blank?
      puts "Please provide an email address."
      exit 1
    end

    user = Decidim::User.find_by(email:)

    if user
      user.update(admin: !user.admin?)
      status = user.admin? ? "enabled" : "disabled"
      puts "The admin role for #{email} has been #{status}."
    else
      puts "No user found with the email: #{email}."
    end
  end
end
