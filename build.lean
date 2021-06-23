open System

constant svgs: List String :=
  ["void", "ascii_regular", "ascii_liga", "greek_regular"]

def main: IO Unit := do
  for svg in svgs do
    let log ← IO.Process.run
      { cmd := "svgexport",
        args := #[s!"./images/svg/{svg}.svg", s!"./images/png/{svg}.png"] }
    IO.println log
