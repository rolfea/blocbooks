class BooksController < BlocWorks::Controller
  def welcome
    render :welcome, book: "Eloquent Ruby"
  end

  def create
    puts "create"
  end

  def read
  end

  def update
  end

  def destroy
  end
end
