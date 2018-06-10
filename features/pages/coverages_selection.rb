
class CoveragesSelectionPage < SitePrism::Page

  # Declarando todos os elementos da page Coverages.
  element :quantidade_itens, ".coverages-list input[type='checkbox']:checked"
  element :quantidade_itens2, ".t2m.resume__count.t--negative"
  element :quantidade_itens_label, ".t2m.resume__label.t--negative"
  element :quantidade_sugestao, ".assistance input[type='checkbox']:checked"

end
