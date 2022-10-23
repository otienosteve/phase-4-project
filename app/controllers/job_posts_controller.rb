class JobPostsController < ApplicationController
    
    def index
        jobs= Job.all
        render json:jobs
        end
        def show 
        comp=job.find_by(params[:id])
        render json: comp
        end
    def create
    comp=job.create!(job_params) 
    render json: comp
    end
        def update
            comp=job.find_by(id:params[:id])
            if comp
            comp.update(job_params)
            render json: comp 
            else 
            render json: {error: "job not found"}
            end
        end
        def destroy 
        comp= job.find_by(id: params[:id])
        if comp
            comp.destroy
            render json: {error: "job Deleted Succesfully"}
        else 
            render json: {error: "job not found"}
        end
    end
        private 
        def job_params
        params.permit(:job_name,:contact_person,:company_contact,:company_adress,:company_email,:company_detail,:job_post_id)
        end

end
