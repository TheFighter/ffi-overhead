
proc plus*(x: int32, y: int32): int32 {.importc, cdecl, dynlib:"libnewplus.so".}
proc plusone*(x: int32): int32 {.importc, cdecl, dynlib:"libnewplus.so".}
proc current_timestamp*(): int64 {.importc, cdecl, dynlib:"libnewplus.so".}
  

when isMainModule:
  # start immediately
  let start = current_timestamp()
  
  var x:int32 = 0
  while x < 2_000_000_000:
    x = plusone(x)
  
  let
    endts = current_timestamp()
    elapsed = endts - start
  
  echo elapsed

