use types::c;

// Init the global state
//
// This function must be called before any other libgit2 function in order to
// set up global state and threading.
//
// This function may be called multiple times - it will return the number of
// times the initialization has been called (including this one) that have not
// subsequently been shutdown.
export @symbol("git_libgit2_init") fn libgit2_init() int;

// Shutdown the global state
//
// Clean up the global state and threading context after calling it as many
// times as git_libgit2_init() was called - it will return the number of
// remainining initializations that have not been shutdown (after this one).
export @symbol("git_libgit2_shutdown") fn libgit2_shutdown() int;
