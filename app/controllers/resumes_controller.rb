class ResumesController < ApplicationController
    def index
    resumes= Resume.all
    render json: resumes
    end
    def show
    resume=Resume.find_by(id:params[:id])
    if resume
        render json: resume
    else
render json: {error: "Resumee not found"}
    end 
    end
    def create
        resume=Resume.create!(resume_params) 
        render json: resume
 end
 def update
 resume=Resume.find_by(id:params[:id])
 if resume
 resume.update(resume_params)
 render json: resume 
 else 
 render json: {error: "resume not found"}
 end
 end
 def destroy 
 resume= Resume.find_by(id: params[:id])
 if resume
 resume.destroy
 render json: {error: "resume Deleted Succesfully"}
 else 
 render json: {error: "resume not found"}
 end
end
 private
    def resume_params
        params.permit(:candidate_id,:Resume_headline, :path)
    end

end
