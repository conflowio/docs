---
title: "Directive blocks"
linkTitle: "Directive blocks"
weight: 12
description: A directive block can attach metadata to blocks and parameters, or modify workflow behaviour.
---

> Naming convention: no specific rules
>
> Examples: doc, todo, when, retry

Directive blocks have the following rules:
- name is not allowed
- block type starts with `@`
- user-defined parameters are not allowed
- directive blocks can not have directives

Directives always belong to the next non-directive block or parameter.

## Example for adding metadata

{{% include "docs/_examples/directive-annotation.md" %}}

## Example for modifying workflow

{{% include "docs/_examples/directive-workflow.md" %}}
