class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    #URLで渡ってきた数字はparamsで取ってこれる。シンボルはroutesに書かれているid。
  end
end
