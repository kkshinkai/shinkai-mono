open System

def main: IO Unit := do
  let log ← IO.Process.run { cmd := "svgexport" }
  IO.println log
