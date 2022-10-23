class CandidatesController < ApplicationController

    def index
    candidates=Candidate.all
    render json: candidates, include: :resume
    end
    def show 
        candidate=Candidate.find_by(id:params[:id])
        if candidate
        render json: candidate
        else  
        render json: {error: "Candidate not found"}
        end
    end
    def create
           candidate=Candidate.create!(candidate_params) 
           render json: candidate
    end
    def update
    candidate=Candidate.find_by(id:params[:id])
    if candidate
    candidate.update(candidate_params)
    render json: candidate 
    else 
    render json: {error: "Candidate not found"}
    end
    end
    def destroy 
    candidate= Candidate.find_by(id: params[:id])
    if candidate
    candidate.destroy
    render json: {error: "Candidate Deleted Succesfully"}
    else 
    render json: {error: "Candidate not found"}
    end
    end
        private 
        def candidate_params
        params.permit(:username,:first_name,:middle_name,:adress,:gender,:contact,:email,:resume_id,:job_post_id)
        end
end
