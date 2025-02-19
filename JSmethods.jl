using Stipple, StippleUI
using Genie.Renderer.Html

Base.@kwdef mutable struct JSmethods <: ReactiveModel
    x::R{Int} = 0 # pressing this will update the array of buttons
end

function restart()
    global model
    model = Stipple.init(JSmethods(), debounce=1)
    on(println, model.x)
end

Stipple.js_methods(::JSmethods) = raw"""
    showNotif () {
    this.$q.notify({
    message: 'I am notifying you!',
    color: 'purple'
    })
    }
"""

function ui()

    app = dashboard(vm(model),
        [
         heading("jsmethods"),
         row(cell(class="st-module", [
                                      p(button("Notify me", @click("showNotif()"))),
                                     ])),
        ], title = "jsmethods")

    html(app)
end


route("/", ui)