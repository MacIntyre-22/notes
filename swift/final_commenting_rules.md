# Project File Structure & Commenting Rules

This document defines the complete structure and commenting standards
for all Swift files in the project. All files must follow these rules
unless a specific exception is documented.

---

## 1. File Header Block

Every file begins with a header block at the very top, before imports.
No blank lines between fields.

```swift
//  Name.swift
//  MTG Collector
//
//  Created by Ben MacIntyre (School) on 2025-09-25.
//  Purpose:
// 					Reason for file
//  External Files:
//         FileName
```

If the file has unusual constraints, add:

```swift
// BEHAVIOR NOTES:
// - <Rule or constraint #1>
// - <Rule or constraint #2>
```

---

## 2. File Sections Using MARK

Files must be structured using consistent `// MARK:` section markers in
this order:

```
 // MARK: - Imports
 // MARK: - Types
 // MARK: - View Body
 // MARK: - Subviews
 // MARK: - State / Bindings
 // MARK: - ViewModel Interaction
 // MARK: - Layout Helpers
 // MARK: - Data Formatting
 // MARK: - Extensions
 // MARK: - Preview
```

Spacing rules:

- One blank line **after** every MARK.
- One blank line **before** the next MARK.
- No extra blank lines inside section headers.

Not all sections are required, but the **order must always be
preserved**.

---

## 3. Function Documentation Comments

Nontrivial functions must follow this 3-line documentation format:

```swift
/// What the function does (one sentence).
/// Why it exists or special considerations (optional).
/// Side effects: <Describe them or say "none">
func example() { ... }
```

Trivial functions (e.g., simple SwiftUI bodies, tiny helpers) do not
need doc comments.

---

## 4. Inline Comment Rules

Inline comments inside function bodies are restricted.

Allowed only when the code is:

- Non-obvious
- Algorithmic
- A workaround for a framework issue
- Handling edge cases

All inline comments must use:

```swift
// REASON: <Explanation>
```

This keeps inline commentary searchable and prevents noise.

---

## 5. Behavior Notes for Complex Files

If a file contains important constraints or gotchas, add at the top:

```swift
// BEHAVIOR NOTES:
// - <Explanation>
// - <Explanation>
```

Use this for:

- Caching quirks
- Parent--child view assumptions
- Non-obvious architectural decisions

Do not duplicate inline comments.

---

## 6. Formatting Rules

To maintain consistency:

- Exactly one blank line between all major sections.
- No trailing blank lines at the end of a file.
- Doc-comment blocks (`///`) may not contain blank lines.
- Header blocks use zero blank lines between fields.

---

## 7. File Exceptions

If a file needs to break any rule:

- Document the exception inside its `BEHAVIOR NOTES`
- Give a direct reason

Example:

```swift
// BEHAVIOR NOTES:
// - UIKit controller must be declared before SwiftUI bindings.
```

---

## 8. Preview Provider Rules

Any SwiftUI file supporting previews must include:

```
 // MARK: - Preview
```

Previews must:

- Be minimal
- Not contain production logic
- Show at least one representative state

---

## 9. Extensions

All extensions must appear under:

```
 // MARK: - Extensions
```

If the file becomes too large, extract extensions into:

```
 FileName+Purpose.swift
```

Example:

```
 CardDetailView+Layout.swift
```

---

## 10. File Navigation Summary

Each file should be navigable by scanning only:

- The header block
- MARK sections
- Function doc comments

No other comment types are allowed.

---

## 11. Documentation Folder Structure

The `/Docs` folder should contain:

```
Docs/
    Architecture.md
    DataFlow.md
    FileStructure.md
    View Conventions.md
    Services.md
    KnownPitfalls.md
```

Each document defines:

- Purpose
- Required rules
- Conventions
- Examples

This ensures long-term consistency across the entire project.