# Name Mazes

Add the names for which you wish to create mazes to `names.yaml`.

In this example, `names.yaml` has the following contents:
```yaml
---
 - Jamis
 - Jasper
 - Jeff
```

```shell
$ bundle
$ ruby -I. name_mazes.rb
 !! Mask created for Jamis as masks/Jamis.mask. Please add connections between letters!
 !! Mask created for Jasper as masks/Jasper.mask. Please add connections between letters!
 !! Mask created for Jeff as masks/Jeff.mask. Please add connections between letters!
```

Edit the masks to have `..` connections between the letters.

Here's what the `Jeff.mask` looks like after adding the connections
```
XXXXXXXXXX......XX................XX..................................XX
XXXXXXXXXX......XX................XX................XX................XX
XXXXXXXXXX......XX................XX................XX................XX
XXXXXXXXXX......XX................XX................XX................XX
XXXXXXXXXX......XX......XXXXXXXXXXXX......XXXXXXXXXXXX......XXXXXXXXXXXX
XXXXXXXXXX......XX......XXXXXXXXXXXX......XXXXXXXXXXXX......XXXXXXXXXXXX
XXXXXXXXXX......XX............XXXXXX............XXXXXX............XXXXXX
XXXXXXXXXX......XX............XXXXXX............XXXXXX............XXXXXX
XXXXXXXXXX......XX............XXXXXX............XXXXXX............XXXXXX
XXXXXXXXXX......XX............XXXXXX............XXXXXX............XXXXXX
....XXXXXX......XX......XXXXXXXXXXXX......XXXXXXXXXXXX......XXXXXXXXXXXX
....XXXXXX......XX......XXXXXXXXXXXX......XXXXXXXXXXXX......XXXXXXXXXXXX
................XX................XX......XXXXXXXXXXXX......XXXXXXXXXXXX
..................................XX......XXXXXXXXXXXX......XXXXXXXXXXXX
XX............XXXX................XX......XXXXXXXXXXXX......XXXXXXXXXXXX
XX............XXXX........................XXXXXXXXXXXX......XXXXXXXXXXXX
```

```shell
$ ruby -I. name_mazes.rb
Created mazes/Jamis/00.png
Created mazes/Jamis/01.png
Created mazes/Jamis/02.png
Created mazes/Jamis/03.png
Created mazes/Jamis/04.png
Created mazes/Jamis/05.png
Created mazes/Jamis/06.png
Created mazes/Jamis/07.png
Created mazes/Jasper/00.png
Created mazes/Jasper/01.png
Created mazes/Jasper/02.png
Created mazes/Jasper/03.png
Created mazes/Jasper/04.png
Created mazes/Jasper/05.png
Created mazes/Jasper/06.png
Created mazes/Jasper/07.png
Created mazes/Jeff/00.png
Created mazes/Jeff/01.png
Created mazes/Jeff/02.png
Created mazes/Jeff/03.png
Created mazes/Jeff/04.png
Created mazes/Jeff/05.png
Created mazes/Jeff/06.png
Created mazes/Jeff/07.png
```