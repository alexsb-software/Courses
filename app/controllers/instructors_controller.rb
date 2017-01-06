class InstructorsController < InheritedResources::Base

    private

    def instructor_params
        params.require(:instructor).permit()
    end
end

