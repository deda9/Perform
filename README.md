# Perform


Its easy syntax to write `do try catch`
In short it replaces this 
```Swift 
do {
    try thrownFunction()
} catch {
    print(error)
}
```

with 
```Swift 
try perform(thrownFunction(), onError: { error in
    print(error)
})
```

and if the `thrownFunction` return value
```Swift 
do {
    let returnedValue = try thrownFunction()
} catch {
    print(error)
}
```

with 
```Swift 
let returnedValue = try perform(thrownFunction(), onError: { error in
    print(error)
})
```
