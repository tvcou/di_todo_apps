class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
      #URLで渡ってきた数字はparamsで取ってこれる。シンボルはroutesに書かれているid。
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'     #newのviewに戻る
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
    def project_params
      params.require(:project).permit(:title)
    end
    #project_paramsについてはprivate関数で定義するのが代表的な手法
    #params[:project].permit[:title] projectで渡ってきた中の物のうち、
    #タイトルだけを引っ張ってきてねという意味。
    #セキュリティ上、フォームから渡ってきたものについて
    #プロジェクトとタイトルだけ必要という時は
    #こういうふうにフィルタリングをかけるのが最近のやり方。

    def set_project
      @project = Project.find(params[:id])
    end
end
