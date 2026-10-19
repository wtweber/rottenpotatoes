module ApplicationHelper
    #Helper to cylce through sort directions on each click
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
        
        #Sort direction icon
        icon = (sort_direction == 'asc' ? '▲' : '▼') if column == sort_column

        link_to "#{title} #{icon}", :sort => column, :direction => direction
    end

    #Column formatting css classes
    def columnFormat(column)
        (sort_direction == 'asc' ? 'sort-acending' : 'sort-decending') if column == sort_column
    end
end
