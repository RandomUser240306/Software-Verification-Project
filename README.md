This is a static analysis tool created as a project for ECE 382C-3: Software Verification and Validation

We implemented the Gropius tool from Ehlers et al (2014), which detects race conditions in AUTOSAR-based software. We adapted it for a Micrium-based OS we made in another class (ECE 445M: RTOS)


How it works:

The tool constructs a call graph from generating LLVM IR, which it then runs a transitive closure algorithm on to determine which memory locations are accessible from which starting points. If there are multiple starting points that access a location, and one has a write, there is the possibility of a race condition.

We also implemented a rudimentary pruning measure, where any memory location access via main must be only occur, so it will not interleave with other accesses. Therefore, we will include them when detecting race conditions.

Made by: Krish Dalela and Nadia Houston

Referenced Work:

Ehlers, Thorsten, Nowotka, D. and Sieweck, P.. (2014). Finding race conditions in real-time code by using formal software verification. FORMS/FORMAT 2014 - 10th Symposium on Formal Methods for Automation and Safety in Railway and Automotive Systems. 38-47. 

Jan Wen Voung, Ranjit Jhala, and Sorin Lerner. 2007. RELAY: static race detection on millions of lines of code. In Proceedings of the the 6th joint meeting of the European software engineering conference and the ACM SIGSOFT symposium on The foundations of software engineering (ESEC-FSE '07). Association for Computing Machinery, New York, NY, USA, 205–214. https://doi.org/10.1145/1287624.1287654
