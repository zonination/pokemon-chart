# Colorblind-Friendly Pokemon Weakness Charts

Last updated 2016-07-10.

See [Gallery](https://github.com/zonination/pokemon-chart/blob/master/README.md#gallery) below.

## About

I noticed that the Pokemon weakness charts in sources like [here](http://pokemondb.net/type) and [here](http://bulbapedia.bulbagarden.net/wiki/Type#Type_chart) are, so to speak, "Not Very Effective" given that 5% of the population is red-green colorblind.

For this reason, I decided to set up a series of Sequential and Diverging scales to assist with colorblindness below. These color palettes are courtesy of [Color Brewer](http://colorbrewer2.org).

## Gallery

### Sequential Scales

For those of us who don't mind the super simple:

![YlOrRd](https://raw.githubusercontent.com/zonination/pokemon-chart/master/YlOrRd.png)

![YlGn](https://raw.githubusercontent.com/zonination/pokemon-chart/master/YlGn.png)

![RdPu](https://raw.githubusercontent.com/zonination/pokemon-chart/master/RdPu.png)

### Diverging Scales

For those of us who prefer a color change for winning and losing:

![RdYlBu](https://raw.githubusercontent.com/zonination/pokemon-chart/master/RdYlBu.png)

![PRGn](https://raw.githubusercontent.com/zonination/pokemon-chart/master/PRGn.png)

![PuOr](https://raw.githubusercontent.com/zonination/pokemon-chart/master/PuOr.png)

## How to Choose Your Own Colors

...In just 7 easy steps!

1. Go to http://colorbrewer2.org/
2. Under "Only show:" Tick the checkbox that says "colorblind safe".
3. Set the number of data classes to 4 in the drop-down menu.
4. Under "Natue of your data", select either "Sequential" or "Diverging".
5. Choose a palette you like. The name will appear in the information bar (e.g. "4-class GnBu").
6. Go to the code and edit line 29. Paste your palette name.
7. Run the code in RStudio, and export the image to 900x600. You now have your new Pokemon chart.

## Information

* **Sources:** [here](http://pokemondb.net/type) and [here](http://bulbapedia.bulbagarden.net/wiki/Type#Type_chart). Any issues with this, please [open a new issue](https://github.com/zonination/pokemon-chart/issues).
* **Tools:** Rstudio, with ggplot2
