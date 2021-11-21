---
title: "Generator blocks"
linkTitle: "Generator blocks"
weight: 14
description: Generator blocks generate new block instances
---

> Naming convention: **noun ending with -er, -or**
>
> Examples: iterator, ticker, *-consumer, *-builder

Generator blocks can be used for:
 - **iteration**, e.g. emit integer numbers between 1..10, iterate over an array or map
 - **scheduling**, e.g. trigger a task every 5 minutes
 - **processing data in small chunks**, e.g. process files in a directory, lines in a file, rows in a database, etc.
 - **consuming events**, e.g. read messages from a queue

Generator blocks can run for a given number of iterations or until stopped.

## Example

{{% include "docs/_examples/generator.md" %}}
