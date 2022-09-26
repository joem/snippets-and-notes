CSS Grid
========

Primary notes from:

- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout)

Additional resources:

- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Relationship_of_Grid_Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Relationship_of_Grid_Layout)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Line-based_Placement_with_CSS_Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Line-based_Placement_with_CSS_Grid)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Grid_Template_Areas](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Grid_Template_Areas)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Layout_using_Named_Grid_Lines](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Layout_using_Named_Grid_Lines)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Auto-placement_in_CSS_Grid_Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Auto-placement_in_CSS_Grid_Layout)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/CSS_Grid,_Logical_Values_and_Writing_Modes](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/CSS_Grid,_Logical_Values_and_Writing_Modes)
- [https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Realizing_common_layouts_using_CSS_Grid_Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Realizing_common_layouts_using_CSS_Grid_Layout)
- [https://gridbyexample.com](https://gridbyexample.com)
- [http://labs.jensimmons.com](http://labs.jensimmons.com)


## Grid Container

We create a grid container by declaring `display: grid` or `display: inline-grid` on an element. **As soon as we do this all direct children of that element will become grid items.**

Example:

    display: grid;


## Grid Tracks

We define rows and columns on our grid with the `grid-template-columns` and `grid-template-rows` properties to the container element. These define grid tracks. A grid track is the space between any two lines on the grid.

Example (creates three 200-px-wide columns):

    grid-template-columns: 200px 200px 200px;


## The fr Unit

Grid introduces an additional length unit to help us create flexible grid tracks. The new `fr` unit represents a fraction of the available space in the grid container.

Example (available space is split into four, two parts are given to the first track and one part each to the next two tracks):

    grid-template-columns: 2fr 1fr 1fr;

Example (first track is 500 pixels, remaining space is divided into three and assigned in proportion to the two flexible tracks):

    grid-template-columns: 500px 1fr 2fr;


## Track listings with repeat() notation

Large grids with many tracks can use the `repeat()` notation, to repeat all or a section of the track listing.

Example (the following two declarations are equivalent):

    grid-template-columns: 1fr 1fr 1fr;
    /* is the same as: */
    grid-template-columns: repeat(3, 1fr);

Example (create grid with initial 20-px track, then repeating section of 6 1fr tracks, then final 20-pixel track):

    grid-template-columns: 20px repeat(6, 1fr) 20px;

Example (repeat pattern of 1fr 2fr for 5 times, for a total of 10 columns):

    grid-template-columns: repeat(5, 1fr 2fr);


## The implicit and explicit grid

Defining only columns (with `grid-template-columns`) explicitly makes the rows implicitly defined, and vice versa. Implicit definitions are autosized based on the content in them. You can also define a set size for tracks created in the implicit grid with the `grid-auto-rows` and `grid-auto-columns` properties.

Example (use grid-auto-rows to ensure that tracks created in the implicit grid are 200 pixels tall):

    grid-auto-rows: 200px;


## Track sizing and minmax()

The `minmax()` function sets a minimum and a maximum value for a size. Then that size will not shrink below the minimum, and it will expand as necessary until it reaches the maximum. To allow a minumum or maximum to go to the extreme, use `auto`.

Example (give the implicit rows a minimum height of 100px and allow them to increase indefinitely as needed):

    grid-auto-rows: minmax(100px, auto);


## Positioning items against lines

Grids are defined by the tracks (the space between two adjacent lines), but when we position things, we position based on the lines. If there are three column tracks, that means there are four column lines: before column 1, between columns 1 and 2, between columns 2 and 3, and after column 3.

We can position things using the `grid-column-start`, `grid-column-end`, `grid-row-start` and `grid-row-end` properties. These allow us to explicitly define where something will be and how many cells they span.

Example (element of class box1 will start in the first column and span all three, and start on the first row and span two rows):

    .box1 {
      grid-column-start: 1;
      grid-column-end: 4;
      grid-row-start: 1;
      grid-row-end: 3;
    }


## Grid Cells

A grid cell is the smallest unit on a grid. Conceptually it is like a table cell. Once a grid is defined as a parent the child items will lay themselves out in one cell each of the defined grid.


## Grid Areas

Items can span one or more cells both by row or by column, and this creates a grid area. Grid areas must be rectangular.


## Gutters

Gutters or alleys between grid cells can be created using the `grid-column-gap` and `grid-row-gap` properties, or the shorthand `grid-gap`. Any space used by gaps will be accounted for before space is assigned to the flexible length fr tracks, and gaps act for sizing purposes like a regular grid track, however you cannot place anything into a gap. In terms of line-based positioning, the gap acts like a fat line.

Example (create a 10-pixel gap between columns and a 1em gap between rows):

    grid-column-gap: 10px;
    grid-row-gap: 1em;

Example (create a 5-pixel gap between columns and between rows, using several equivalent methods):


    grid-column-gap: 5px;
    grid-row-gap: 5px;
    /* is the same as: */
    grid-gap: 5px 5px;
    /* is the same as: */
    grid-gap: 5px;


## Nesting grids

A grid item can become a grid container. Grid attributes are not inherited to nested grids.


## Layering items with z-index

Grid items can occupy the same cell.
it displays on top as it comes later in the source order.
We can control the order in which items stack up by using the z-index property - just like positioned items. If we give box2 a lower z-index than box1 it will display below box1 in the stack.


## The grid-column and grid-row shorthands

The `grid-column-start` and `grid-column-end` properties can be combined into `grid-column`.
The `grid-row-start` and `grid-row-end` properties can be combined into `grid-row`.

Example:

    grid-column-start: 1;
    grid-column-end: 2;
    /* can be combined into: */
    grid-column 1 / 2;


## Default spans

In practice if an item only spans one track you can omit the grid-column-end or grid-row-end value. Grid defaults to spanning one track.

Example:

    grid-row: 3 / 4;
    /* can be shortened to: */
    grid-row: 3;


## The grid-area property

We can take things a step further and define each area with a single property – grid-area. The order of the values for grid-area are as follows: 1. grid-row-start, 2. grid-column-start, 3. grid-row-end, 4. grid-column-end.

Example:

    grid-row-start: 1;
    grid-column-start: 1;
    grid-row-end: 4;
    grid-column-end: 2;
    /* can be shortened to: */
    grid-area: 1 / 1 / 4 / 2;


## Counting backwards

We can also count backwards from the block and inline end of the grid. These lines can be addressed as -1, and you can count back from there – so the penultimate line is -2. The final line is the final line of the explicit grid.

This means you can easily stretch the an item across the whole grid without specifying the exact number of lines with `grid-column: 1 / -1;`.


## Using the span keyword

In addition to specifying the start and end lines by number, you can specify a start line and then the number of tracks you would like the area to span.

Example (without using span and with using span):

    grid-row: 1 / 4;
    /* is the same as: */
    grid-row: 1 / span 3;


## Naming a grid area

The grid-area property can take as a value all four of the lines used to position a grid area, like `grid-area: 1 / 1 / 4 / 2;`. But we can also define an area by giving it a name and then specify the location of that area in the value of the grid-template-areas property. Using this method we do not need to specify anything at all on the individual grid items, everything happens on our grid container.

Example:

    .header {
      grid-area: hd;
    }
    .footer {
      grid-area: ft;
    }
    .content {
      grid-area: main;
    }
    .sidebar {
      grid-area: sd;
    }

    .wrapper {
      display: grid;
      grid-template-columns: repeat(9, 1fr);
      grid-auto-rows: minmax(100px, auto);
      grid-template-areas:
        "hd   hd   hd   hd   hd   hd   hd   hd   hd"
        "sd   sd   sd   main main main main main main"
        "sd   sd   sd   ft   ft   ft   ft   ft   ft";
    }


## Leaving a grid cell empty

To leave a cell empty use the full stop (period) character.

Example:

    grid-template-areas: 
      "hd hd hd hd   hd   hd   hd   hd   hd"
      "sd sd sd main main main main main main"
      ".  .  .  ft   ft   ft   ft   ft   ft";


## Deal with items that span tracks

By setting a span value for `grid-column-end` and/or `grid-row-end`, we can make an element span columns/rows without explicitly stating which rows/columns it must start and end on.

Example:

    grid-column-end: span 2;


## Filling in the gaps

Create a layout that doesn’t have gaps in it by adding the property `grid-auto-flow` with a value of `dense` to the container. 

Example:

    grid-auto-flow: dense;




