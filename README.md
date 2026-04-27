This is a static analysis tool created as a project for ECE 382C-3: Software Verification and Validation

We implemented the Gropius tool from Ehlers et al (2014), which detects race conditions in AUTOSAR-based software. We adapted it for a Micrium-based OS we made in another class (ECE 445M: RTOS)


How it works:

The tool constructs a call graph from generating LLVM IR, which it then runs a transitive closure algorithm on to determine which memory locations are accessible from which starting points. If there are multiple starting points that access a location, and one has a write, there is the possibility of a race condition.

We also implemented a rudimentary pruning measure, where any memory location access via main must be only occur, so it will not interleave with other accesses. Therefore, we will include them when detecting race conditions.
