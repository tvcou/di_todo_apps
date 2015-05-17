class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
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

end
