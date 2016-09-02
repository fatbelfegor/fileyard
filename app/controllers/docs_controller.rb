class DocsController < ApplicationController

	before_action :find_docs, only: [:show, :edit, :update, :destroy]

	def index
		@docs = Doc.all.order("created_at DESC")
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
		if @doc.update(doc_params)
			redirect_to @doc
		else
			render 'edit'
		end
	end

	def destroy
		@doc.destroy
		redirect_to docs_path
	end

	private

	def doc_params
		params.require(:doc).permit(:title, :content)
	end

	def find_docs
		@doc = Doc.find(params[:id])
	end



end
