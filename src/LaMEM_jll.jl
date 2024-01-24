# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LaMEM_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("LaMEM")
JLLWrappers.@generate_main_file("LaMEM", UUID("15d6fa20-f789-5486-b71b-22b4ac8eb1c1"))
end  # module LaMEM_jll
