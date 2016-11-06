class BooksController < BlocWorks::Controller
  def welcome
    @test = "test"    
    render :welcome, book: "Eloquent Ruby"
  end

  def create
    render :welcome, book: "Create"
  end

  def read
    render :welcome, book: "read"
  end

  def update
    render :welcome, book: "update"
  end

  def destroy
    render :welcome, book: "destroy"
  end
end
