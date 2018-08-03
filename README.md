# DataViewer.jl

# Warning

Still in beta. Requires xdg-open.

## Installation

To install the Module, enter the following into the Julia REPL.
```Pkg.clone("https://github.com/alfredjmduncan/DataViewer.jl.git")```

## Usage

For iterable variable `dat`, the function call

```viewdata(dat)```

writes an `.html` table named `viewdata.html` to the working directory and opens the table in your preferred web browser using the linux utility `xdg-open`.

If `dat` is a DataFrame, the table header values are the column names of the DataFrame. Otherwise, the table header is the column number.
