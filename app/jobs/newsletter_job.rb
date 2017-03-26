class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

   puts "I am busy mailing newsletter."
   sleep 4
  end
end
