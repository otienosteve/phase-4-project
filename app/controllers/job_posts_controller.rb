class JobPostsController < ApplicationController
    
    def index
        jobs= JobPost.all
        render json:jobs
        end
        def show 
        comp=JobPost.find_by(params[:id])
        render json: comp
        end
    def create
        
    comp=JobPost.create!(job_params) 
    render json: comp
    end
        def update
            comp=JobPost.find_by(id:params[:id])
            if comp
            comp.update(job_params)
            render json: comp 
            else 
            render json: {error: "job not found"}
            end
        end
        def destroy 
        comp= JobPost.find_by(id: params[:id])
        if comp
            comp.destroy
            render json: {error: "job Deleted Succesfully"}
        else 
            render json: {error: "job not found"}
        end
    end
        private 
        def job_params
        params.permit(:company_id,:job_title,:post,:no_vacancy,:start_date,:candidate_id)
        end

end
