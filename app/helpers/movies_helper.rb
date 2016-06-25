module MoviesHelper
  def get_classes_for(movie, field)
    out = "validate"
    return out unless movie
    if movie.errors[field].count > 0
      out += " invalid tooltipped"
    else
      out += " valid"
    end
    out
  end
end
