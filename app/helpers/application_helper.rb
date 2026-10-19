module ApplicationHelper
    #Helper to cylce through sort directions on each click
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
        
        #Sort direction icon
        icon = if column == sort_column
            sort_direction == 'asc' ? '▲' : '▼'
        else
            ''
        end
        link_to "#{title} #{icon}", :sort => column, :direction => direction
    end

    def columnFormat(column)
        if column == sort_column
            sort_direction == 'asc' ? 'sort-acending' : 'sort-decending'
        else 
            ''
        end
    end
end
