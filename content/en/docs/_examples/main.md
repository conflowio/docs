**example.cf**:
```
@input{
  type:string
}
name := "You"

println {
value = "Hello " + main.name + "!"
}
```
