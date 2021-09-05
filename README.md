# Demos for Stipple

This repository includes a collection of Stipple demo application.

## Set up

1. Download or clone demos repo

2. Open a Julia REPL (Start Julia from Start menu, app launcher, terminal, Applications folder, etc)

3. `cd` to the demos folder. Ex: `julia> cd("<path_to_demos_folder_>")

4. Go into package management mode and run `pkg> activate .` and `pkg> instantiate` (type `julia> ]` to enter `pkg` mode)

## Run the demos

1. Open a Julia REPL (Start Julia from Start menu, app launcher, terminal, Applications folder, etc)

2. `cd` to the demos folder. Ex: `julia> cd("<path_to_demos_folder_>")

3. Activate the environment - press `]` to go into `pkg> ` mode and run

  ```julia
  pkg> activate .
  pkg> instantiate
  ```

  then exit `pkg> ` mode (via Ctrl+C or backspace until the cursor changes from `pkg> ` to `julia> `)

4. Run:

```julia
# using includet from Revise to reflect changes in browser on Save 
julia> includet("IrisClustering.jl") # swap "IrisClustering.jl" with any other demo
julia> up() # should kick server at default localhost and port

# Using random port between 8000:9000 and open browser
julia> up(rand((8000:9000)), open_browser=true)
```

Upon starting the application, a browser window should automatically open with the demo dashboard.