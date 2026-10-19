module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
        icon = if column == sort_column
            sort_direction == 'asc' ? '▲' : '▼'
        else
            ''
        end
        link_to "#{title} #{icon}", :sort => column, :direction => direction
    end
end
