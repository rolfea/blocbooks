class BooksController < BlocWorks::Controller
  def welcome
    @test = "test"
    render :welcome, book: "Eloquent Ruby"
  end

  def index
    render :index, books: Book.all
  end

  def create
    render :welcome, book: "Create"
  end

  def read
    render :welcome, book: "Read"
  end

  def update
    render :welcome, book: "Update"
  end

  def destroy
    render :welcome, book: "Destroy"
  end
end
