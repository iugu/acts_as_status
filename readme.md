Acts As Status
=================

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



