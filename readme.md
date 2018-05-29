## Object Tracking
-----------------------
--------------------
Planys Technologies


### Introduction

Object tracking in underwater can be used to track an object's postion or track the ROV's position by tracking a static object. 

### Algorithms Used

In this Program, multiple algorothms are available in tracking the object once an opbject is specified.
The object is specified by filtering and selecting red colour.

1. MIL tracking
2. KCF tracking
3. Median Flow tracking
4. Booster tracking

Out of these algorithm KCF tracking seems to work reliably and consistently.

The tracker will check for the specified color when it is initialized. Once it is able to find a color, it will start to track that colour with a visible bounding box on the output display. once the object is lost or tracking got interrupted, it will start over by searching for the color

When a wrong oject is being tracked, the tracker can be reset.