The `@when` directive defines a run condition for the `exec` task, and the `@timeout` directive defines how long the task
is allowed to run.

```conflow
build_enabled := true

@when main.build_enabled
@timeout 5m
exec {
  command = "npm"
  args = ["run", "build"]
}
```
