# macshot agent guidance

## AppKit text-view undo lifetime

`UndoManager` keeps undo-operation targets unowned. A disposable editable
`NSTextView` that inherits a longer-lived window undo manager can leave text
undo operations targeting a deallocated view, causing Cmd+Z to crash in
`_NSUndoStack popAndInvoke` / `_undoRedoTextOperation:`.

- Every app-created editable text view with `allowsUndo = true` must use
  `ScopedUndoTextView` or inherit from it. Do not use a plain `NSTextView`.
- Call `discardUndoHistory()` before removing and releasing the text-editing
  session.
- Keep transient text-editing history out of the window's shared undo manager.
- Read-only text views that cannot register editing operations are exempt.
- When adding or changing a text editor, verify that in-view undo/redo still
  works and that its window undo manager remains untouched.
