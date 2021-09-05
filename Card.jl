# This exmaple show how to add use q-card with inline styling 

using Stipple
using StippleUI

Base.@kwdef mutable struct CardDemo <: ReactiveModel

end

hs_model = Stipple.init(CardDemo())

function ui()
    [
        page(
            vm(hs_model), class="container", title="Card Demo", partial=true,
            [
                row(
                    cell([
                        h1("Events example")
                    ])
                )
                row(
                    cell([
                        card(class="text-white", style="background: radial-gradient(circle, #35a2ff 0%, #014a88 100%); width: 30%",
                        card_section("lorLorem Ipsum is simply dummy text of the printing 
                        and typesetting industry. Lorem Ipsum has been the industry's standard
                         dummy text ever since the 1500s, when an unknown printer took a galley 
                         of type and scrambled it to make a type specimen book. It has survived 
                         not only five centuries, but also the leap into electronic typesetting,
                          remaining essentially unchanged. It was popularised in the 1960s with 
                          the release of Letraset sheets containing Lorem Ipsum passages, and more
                           recently with desktop publishing software like Aldus PageMaker including 
                           versions of Lorem Ipsumem"))
                    ])
                )
            ]
        )
    ]
end

route("/", ui)
