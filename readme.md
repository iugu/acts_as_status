Acts As Status
=================

Installation
-----------
**In your Project's Gemfile**
> gem 'acts\_as\_status'

How to use it
---------
**Add it to your model**

> acts\_as\_status :status, %w[new waiting executing blocked finished]

Instance Methods
----------
**Status setter and getter**

> @foo.status = "new"
>
> @foo.status
>
> => "new"


Class Methods
----------
**Searching records by status**
It will give you a method for each status you set has valid

**Ex:**

> Foo.only_new
> 
> => Return all foos which status == "new"
>
> Foo.only_waiting
>
> => Return all foos which status == "waiting"



