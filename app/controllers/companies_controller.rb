class CompaniesController < ApplicationController
    def index
    companies= Company.all
    render json:companies
    end
    def show 
    comp=Company.find_by(params[:id])
    render json: comp
    end
    def create
       comp=Company.create!(company_params) 
       render json: comp
    end
    def update
        comp=Company.find_by(id:params[:id])
        if comp
        comp.update(company_params)
        render json: comp 
        else 
        render json: {error: "Company not found"}
        end
    end
    def destroy 
    comp= Company.find_by(id: params[:id])
    if comp
        comp.destroy
        render json: {error: "Company Deleted Succesfully"}
    else 
        render json: {error: "Company not found"}
    end
end
    private 
    def company_params
    params.permit(:company_name,:contact_person,:company_contact,:company_adress,:company_email,:company_detail,:job_post_id)
    end
end
