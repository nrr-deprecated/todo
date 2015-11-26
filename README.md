# todo - Tools to maintain a Randy Pausch-style "to do" list

	TODO(nrr): Link to Randy Pausch's time management talk here.

The late Randy Pausch was a smart man who knew how to manage his time
effectively. Most importantly, he taught us all before his rather
untimely demise how to adopt the practices that made him productive and
successful.

This is my take on implementing his style of "to do" list, which is
something I've been using since my days as an undergraduate mathematics
major. I diverge from his in that, mainly, I don't use Emacs anymore,
and I don't particularly like the diffs from `git` whenever I do a
`:,!sort` in vi.

## List format

The list format is incredibly simple.

	0 this is a high-priority list item
	9 this is a low-priority list item ("someday, maybe")
	1 this is an item that is somewhere in the middle, likely to be done tomorrow
	x0 this is a high-priority item that is done

That's pretty much it.

## The commands themselves

These are written mostly with the Unix philosophy in mind, and the
scripts themselves are barely even 10 lines of Bash. They're also
written to be composable, so things like `grep` and `sed` should largely
work as intended.

### `todo-cat $TODO`

### `todo-add $TODO $PRIORITY $DESCRIPTION`

### `todo-mark-undone $TODO $ITEM`

### `todo-mark-done $TODO $ITEM`

### `todo-filter-all-undone`

### `todo-filter-done`

### `todo-filter-today`

### `todo-postpone-until-tomorrow $TODO $ITEM`

### `todo-promote-to-today $TODO $ITEM`
