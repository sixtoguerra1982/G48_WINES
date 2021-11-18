module WinesHelper
    def strains_for_select
        Strain.order(:name).collect { |g| [g.name, g.id] }
    end
end
