class Admin::TemplatesController < Admin::BaseController
	before_action :fetch_template, only: [:edit, :update, :destroy]

	def index
		@templates = Template.all
	end

	def new
		@template = Template.new
	end

	def create
		@template = Template.new(template_params)

		if @template.save
			redirect_to admin_templates_path
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		@template.update(template_params)
		if @template.save
			redirect_to admin_templates_path
		else
			render :edit
		end
	end

	def destroy
		@template.destroy
		redirect_to admin_templates_path
	end

	private
	def fetch_template
		@template = Template.find(params[:id])
	end

	def template_params
		params.require(:template).permit(:title, :content, :default)
	end
end