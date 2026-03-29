# Hashing

```table-of-contents
```

---

## Whats Hashing

A hash funtion turns [dictionaries](school/advprog/dictionaries.md) key into an integer index, which determines where the value is stored internally.

**Hashing** is the process of converting a key (like a string, number, or object) into an array index using a mathematical function.

Its fast because:
- inserts O(1)
- lookups O(1)
It has direct access instead of looping over the collection

## Collisions

- If you can find a perfect hash function, using it to implement the ADT dictionary operations are O(1)
- Using a perfect hash function is not always possible and collisions are likely to occur.
- Resolving a collision takes time, operations slower than O(1). As a hash table fills, collisions occur more often
- Two different keys:
	- `"cat"` → hashCode = 312 → 312 % 10 = **2**
	- `"dog"` → hashCode = 742 → 742 % 10 = **2**
	Different keys → same index → **collision at index 2**

## Load Factor

- definition of load factor:
	- $λ = \frac{\text{Num of entries in dict}}{\text{Num of locations in hash table}}$
	- This directly controls performance in separate chaining
	- λ ≈ average number of elements per bucket
	- - ==λ < 1 → very fast (almost constant time)==
	- λ ≈ 1–2 → still efficient
	- ==λ > 1 → performance degrades toward linear==

- worst case:
	- All keys hash to the same bucket
	- Chain length = n
	- **Cost: O(n)** for all operations

#### Separate Chaining
- each bucket stores a collection of entries
- solve collisions:
	- multiple keys in the same bucket
	- stored in a list or tree
- More flexible, handles collisions more easily

#### Open Addressing
- all entries live directly in the array
- collisions resolve by probing for another slot
- solve collisions:
	- if slot is taken probe for next available slot
	- ex: linear probing, quadratic probing, double hashing
- Open addressing works best when λ ≤ 0.7–0.8
- Better cache performance (data is contiguous)

## Linear Probing

- searching hashmaps
- uses placehodlers like a placeholder entry and flags within entries to keep probing from failing
- A hash dictionary implementation using **linear probing** for collision resolution. When a collision occurs (two keys hash to the same index), the algorithm linearly searches for the next available slot.
