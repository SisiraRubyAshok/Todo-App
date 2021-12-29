class TaskMailerJob < ApplicationJob
  queue_as :default

  def perform(user,task)
    puts "IN JOBBBBBBBB"
    # puts user
    @user=user
    @task=task
    TaskMailer.daily_task_mail(@user,@task).deliver
  end

end



# REDIS_URL="redis://127.0.0.1:6379/0" bundle exec sidekiq -e development -C config/sidekiq.yml
# 
