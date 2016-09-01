class DocsController < ApplicationController

	before_action :find_docs, only: [:show, :edit, :update, :destroy]

	def index
		
	end

	def show
		
	end

	def new
		@doc = Doc.new
	end

	def create
		@doc = Doc.new(doc_params)

		if @doc.save
			redirect_to @doc, notice: "Successfully created new doc"
		else
			render 'new'
		end

	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private

	def doc_params
		params.require(:doc).permit(:title, :content)
	end

	def find_docs
		@doc = Doc.find(params[:id])
	end



end
