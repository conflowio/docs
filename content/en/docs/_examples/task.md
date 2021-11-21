The `exec` task block (named `npm_build`) will execute the `npm run build` command.

When the command is finished, the `println` task block will print the exit code to the standard out.

```conflow
npm_build exec {
  command = "npm"
  args = ["run", "build"]
}

println format("Exit code was: %d", npm_build.exit_code)
```
