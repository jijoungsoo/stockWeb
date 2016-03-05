module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    #direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
#<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
#glyphicon glyphicon-triangle-bottom
#glyphicon glyphicon-triangle-top
    direction="asc"
    puts "sort1111111111111111111"
    if column === sort_column
      puts "aaa4"
        if sort_direction==nil || sort_direction==""
            direction_title =""
            direction="asc"
        elsif sort_direction=="asc"
            direction_title ="<span class='glyphicon glyphicon-triangle-bottom' aria-hidden='true'></span>"
            direction="desc"
        elsif sort_direction=="desc"
            direction_title ="<span class='glyphicon glyphicon-triangle-top' aria-hidden='true'></span>"
            direction=""
        end
      else
        direction_title=""
    end
    puts "sortasdfasdfas"
    puts "sort_column=#{sort_column}"
    puts "column=#{column}"
    puts "sort_direction=#{sort_direction}"
    puts "direction=#{direction}"
    link_to (title+direction_title).html_safe, {:sort => column, :direction => direction}, {:class => css_class}
  end
end
