module MoviesHelper
    def sortable_column(column, label)
      # Toggle sort direction
      direction = column == @sort_column && @sort_direction == "asc" ? "desc" : "asc"
  
      # CSS class for sorted column
      css_class = column == @sort_column ? "sorted-#{@sort_direction}" : ""
  
      # Generate link with sorting parameters
      link_to label, movies_path(sort: column, direction: direction), class: css_class
    end
  end
  