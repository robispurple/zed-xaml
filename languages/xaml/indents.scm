(STag ">" @end) @indent
(EmptyElemTag "/>" @end) @indent

;; Ensure attributes on new lines are indented relative to the tag
(Attribute) @indent

;; Handle indentation for content inside tags
(STag) @indent
(ETag) @outdent
