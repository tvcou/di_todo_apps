class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
      #URL$B$GEO$C$F$-$??t;z$O(Bparams$B$G<h$C$F$3$l$k!#%7%s%\%k$O(Broutes$B$K=q$+$l$F$$$k(Bid$B!#(B
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'     #new$B$N(Bview$B$KLa$k(B
    end
  end

  private
    def project_params
      params.require(:project).permit(:title)
    end
    #project_params$B$K$D$$$F$O(Bprivate$B4X?t$GDj5A$9$k$N$,BeI=E*$J<jK!(B
    #params[:project].permit[:title] project$B$GEO$C$F$-$?Cf$NJ*$N$&$A!"(B
    #$B%?%$%H%k$@$1$r0z$CD%$C$F$-$F$M$H$$$&0UL#!#(B
    #$B%;%-%e%j%F%#>e!"%U%)!<%`$+$iEO$C$F$-$?$b$N$K$D$$$F(B
    #$B%W%m%8%'%/%H$H%?%$%H%k$@$1I,MW$H$$$&;~$O(B
    #$B$3$&$$$&$U$&$K%U%#%k%?%j%s%0$r$+$1$k$N$,:G6a$N$d$jJ}!#(B

end
