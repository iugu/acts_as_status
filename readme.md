Acts As Status
=================

Installation
-----------
**In your Project's Gemfile**
> gem 'acts\_as\_status'

Adding status to your model
---------

> acts\_as\_status :status, %w[new waiting executing blocked finished]

Instance Methods
----------

> @foo.status = "new"
>
> @foo.status
>
> => "new"


Class Methods
----------

> Foo.only_new
> 
> => Return an array with all foos which status == "new"



