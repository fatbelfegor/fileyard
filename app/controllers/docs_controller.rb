class DocsController < ApplicationController

	def index
		
	end

	def show
		
	end

	def new
		
	end

	def create
		
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
		
	end



end
