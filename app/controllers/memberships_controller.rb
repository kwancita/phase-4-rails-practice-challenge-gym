class MembershipsController < ApplicationController

    def create
        member = Membership.create(member_params)
        if member.valid?
            render json: member
        else
            render json: {error: "Invalid"}, status: :unprocessable_entity
        end
    end

    def destroy
        member = Membership.find_by(id: params[:id])
        if member
            render json: member
        else
            render json: {error: "Membership not found"}, status: :not_found
        end
    end

    private
    def member_params
        params.permit(:gym_id, :client_id, :charge)
    end

end
