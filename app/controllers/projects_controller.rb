class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    #URL$B$GEO$C$F$-$??t;z$O(Bparams$B$G<h$C$F$3$l$k!#%7%s%\%k$O(Broutes$B$K=q$+$l$F$$$k(Bid$B!#(B
  end
end
