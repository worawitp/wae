class StudentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @student = @project.students.create(studentid: params[:student][:studentid], name: params[:student][:name])
    redirect_to project_path(@project)
  end
end
