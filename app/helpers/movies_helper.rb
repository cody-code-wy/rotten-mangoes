module MoviesHelper
  def get_classes_for(movie, field)
    out = "validate"
    return out unless movie
    out += " materialize-textarea" if movie.class.columns_hash[field.to_s].type == :text
    return out if movie.new_record?
    if movie.errors[field].count > 0
      out += " invalid tooltipped"
    else
      out += " valid"
    end
    out
  end

  def get_tooltip_for(movie, field)
    if movie.errors[field].count > 0
      {
        'data-position': 'bottom',
        'data-delay': '50',
        'data-tooltip': movie.errors.full_messages_for(field).join("; ")
      }
    else
      {}
    end
  end
end
