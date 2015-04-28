# Nore

## Overview

Nore is simple CSS framework for responsive web design, adopting concepts of the fluid grid and media queries. You can also see [Japanese full documentation](http://wazly.net/app/nore).

## Getting Started

If the path is `DocumentRoot/css/nore.min.css`, then copy and paste the HTML below. And customize it if needed.

```html
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width" initial-scale="1" maximum-scale="1" user-scalable="no">
        <link rel="stylesheet" href="/css/nore.min.css">
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

The rule of the class name is explained by the following table.
The variables of breakpoints can be reset as you like.

|name  |meaning                  |scope of width (px)|
|:----:|:-----------------------:|------------------:|
|`g`   |global                   |any                |
|`xs`  |`$xs` or less            |<  321             |
|`sm`  |`$sm` or less            |<  541             |
|`md`  |`$md` or less            |<  721             |
|`lg`  |`$lg` or less            |<  961             |
|`xl`  |`$xl` or less            |< 1201             |
|`sx`  |more than `$xs`          |>  320             |
|`ms`  |more than `$sm`          |>  540             |
|`dm`  |more than `$md`          |>  720             |
|`gl`  |more than `$lg`          |>  960             |
|`lx`  |more than `$xl`          |>  1200            |
|`sxsm`|between `$xs+1` and `$sm`|321 -  540         |
|`sxmd`|between `$xs+1` and `$md`|321 -  720         |
|`sxlg`|between `$xs+1` and `$lg`|321 -  960         |
|`sxxl`|between `$xs+1` and `$xl`|321 - 1200         |
|`msmd`|between `$sm+1` and `$md`|541 -  720         |
|`mslg`|between `$sm+1` and `$lg`|541 -  960         |
|`msxl`|between `$sm+1` and `$xl`|541 - 1200         |
|`dmlg`|between `$dm+1` and `$lg`|721 -  960         |
|`dmxl`|between `$md+1` and `$xl`|721 - 1200         |
|`glxl`|between `$lg+1` and `$xl`|961 - 1200         |

## Nore Outermost

The width of nore columns is dynamic because of relative value. To avoid expanding to infinity, `.nore-outermost` is available. It sets limitation to the width of outermost nore block.

*Case:* `$nore-outermost: 920px`

```html
<div class="nore nore-outermost">
    <div class="g-1-5">
        <p>This column never expand more than 184px.</p>
    </div>
    <div class="g-4-5 nore">
        <div class="g-1-4">
            <p>This column never expand more than 184px.</p>
        </div>
        <div class="g-3-4">
            <p>This column never expand more than 552px.</p>
        </div>
    </div>
</div>
```
