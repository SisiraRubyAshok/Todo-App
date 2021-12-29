class TaskMailer < ApplicationMailer
	def daily_task_mail(user,task)
		puts "In taskk"
		@user=user
		@task=task
		mail(to: 'sree.sisira.1080@gmail.com', subject: "Daily Task")
		puts "In daily_task_mail }}}}}}}}}}}}"
	end
end
