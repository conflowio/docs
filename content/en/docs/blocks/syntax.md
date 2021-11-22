---
title: "Syntax"
linkTitle: "Syntax"
weight: 1
description: Learn about how to define a block
---

A **block** consists of the following:
 - **name** (optional): Can only contain lowercase letters, numbers and underscores.
   Must start with a letter. Must be globally unique.
 - **type**: Defines the type of the block.
 - **body**: Contains parameters and blocks.

A **parameter** consists of the following:
 - **name**: Can only contain lowercase letters, numbers and underscores. 
   Must start with a letter. Must be unique on the parent block.
 - **value**: A **value expression**.

A parameter can either be a predefined block parameter (using `=`) or a user-defined one (using `:=`).

A **value expression** can be:
 - a scalar value, e.g. `5`, `"string"`
 - a complex expression with operators and functions, e.g. `(1 + 2) / 3`, `str_format("Hello %s!", "World")`
 
```conflow
[block name] [block type] {
   [parameter name] = [value expression]
   
   [user-defined parameter name] := [value expression]
   
   [child block name] [child block type] {
      ...
   }
}
```

## Block without parameters or child blocks

When the block has no body, it can be emitted. These are valid block definitions:

```
[block name] [block type]
```

```
[block type]
```

## User-defined parameters

You can define additional parameters on a block by using `:=` instead of `=`.

```conflow
[block name] [block type] {
   [user-defined parameter name] := [value expression]
}
```

## Short block format

If a block has a *value parameter*, you can use the short block format to define that block, if you don't want to define
other parameters.

The *value parameter's* value can be any *value expression*.

```conflow
[block name] [block type] [value expression]
```

This is equivalent to:

```conflow
[block name] [block type] {
  [value parameter's name] = [value expression]
}
```

## Directives

[Directives](/docs/blocks/directives) are special type of blocks, which can attach metadata to blocks and parameters, or modify workflow behaviour.

Directive blocks have the following rules:
 - name is not allowed
 - block type starts with `@`
 - user-defined parameters are not allowed
 - directive blocks can not have directives
 
```conflow
@[directive block type] {
   [parameter name] = [value expression]
   
   [child block name] [child block type] {
      ...
   }
}
```

Directives always belong to the next non-directive block or parameter.

```
@[directive block type] {
   ...
}
[block name] [block type] {
   ...
}
```

or

```
@[directive block type] {
   ...
}
[parameter name] = [value expression]
```
