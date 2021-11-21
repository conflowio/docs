The `ticker` generator block will create a new `tick` block instance (named `tick_every_sec`) every second, which will trigger a `println` task
to print the time to the standard out.

```conflow
ticker {
    interval = 1s

    tick_every_sec tick
}

println format("New tick at %s", string(tick_every_sec.time))
```
