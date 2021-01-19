class AttendancesController < ApplicationController

    def index
      attendances = Attendance.all
      render json: attendances  
    end

    def show 
        #Will come back to this. this is to start off
        attendance = Attendance.find(params[:id])
        render json: attendance
    end
end
