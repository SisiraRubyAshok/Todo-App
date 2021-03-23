module Autocomplete
  class Tasks < ApplicationAutocomplete

    private 

    def result_partial(task)
      ApplicationController.new.render_to_string(partial: 'tasks/autocomplete', 
                                                 locals: { task: task }).html_safe
    end

    def result_value(task)
      task.todo
    end

    def results
      @results ||= Task.where('TODO LIKE :query', query: "%#{params[:search]}%").limit(3)
    end

  end
end