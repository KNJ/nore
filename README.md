# Nore

## Overview

Nore is simple CSS framework for responsive web design, adopting concepts of the fluid grid and media queries. You can also see [Japanese full documentation](http://wazly.net/app/nore).

## Getting Started

If the path is `DocumentRoot/css/nore.css`, then copy and paste the HTML below. And customize it if needed.

```html
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width" initial-scale="1" maximum-scale="1" user-scalable="no">
        <link rel="stylesheet" href="/css/nore.css">
    </head>
</html>
```

## Grids

The class `.nore` is required first to start the grid system, and its inner elements need `.g-*` to divide into columns.
Name the classes like those of [Pure](http://purecss.io/grids/), but do not forget to reduce the fraction and the denominator must be 16 or less.
`.g-2-5` is appropriate, but `.g-4-10` is senseless.

### Examples

#### 1 column

```html
<div class="nore">
    <div class="g-1">
        <p>100%</p>
    </div>
</div>
```

#### 2 columns (1/2 + 1/2)

```html
<div class="nore">
    <div class="g-1-2">
        <p>50%</p>
    </div>
    <div class="g-1-2">
        <p>50%</p>
    </div>
</div>
```

#### 2 columns (1/3 + 2/3)

```html
<div class="nore">
    <div class="g-1-3">
        <p>33.33333%</p>
    </div>
    <div class="g-2-3">
        <p>66.66667%</p>
    </div>
</div>
```

## Media Queries

If you want to put 3 columns horizontally on PCs or tablets and vertically on smaller devices, overwrite `.g-*` with `.sm-*` as follows.

```html
<div class="nore">
    <div class="g-1-3 sm-1">
        <p>Block 1</p>
    </div>
    <div class="g-1-3 sm-1">
        <p>Block 2</p>
    </div>
    <div class="g-1-3 sm-1">
        <p>Block 3</p>
    </div>
</div>
```
