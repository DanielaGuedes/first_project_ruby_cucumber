require 'capybara/dsl'
require 'site_prism'


class AssistancesPage < SitePrism::Page

    element :quantidade_coverages, ".t2m.resume__count.t--negative[data-coverages-count]"
    element :quantidade_assistances, ".t2m.resume__count.t--negative[data-assistances-count]"
    element :coverages_label, ".t2m.resume__label.t--negative[data-coverages-count]"
    element :assistances_label, ".t2m.resume__label.t--negative[data-assistances-count]"

end
