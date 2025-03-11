use types::c;


// Creates a new Git repository in the given folder.
//
// is_bare is a boolean that determines whether the repository will be a bare
// repository, or whether it should be created as a working directory with a
// .git inside.
// 
// Returns 0 on success, or an error code.
//
export fn repository_init(out: *nullable *repository, path: str, is_bare: bool) int = {
	let _path = c::fromstr(path);
	let res = _repository_init(out, _path, is_bare);
	free(_path);
	return res;
};
@symbol("git_repository_init") fn _repository_init(out: *nullable *repository, path: *const c::char, is_bare: bool) int;

// Option flags for [[repository_init_ext]].
//
// These flags configure extra behaviors to [[repository_init_ext]].
// In every case, the default behavior is the zero value (i.e. flag is
// not set). Just OR the flag values together for the flags parameter
// when initializing a new repo.
export type repository_init_flag_t = enum uint {
	// Create a bare repository with no working directory.
	REPOSITORY_INIT_BARE              = (1 << 0),

	// Return an GIT_EEXISTS error if the repo_path appears to already be
	// an git repository.
	REPOSITORY_INIT_NO_REINIT         = (1 << 1),

	// Make the repo_path (and workdir_path) as needed. Init is always willing
	// to create the ".git" directory even without this flag. This flag tells
	// init to create the trailing component of the repo and workdir paths
	// as needed.
	REPOSITORY_INIT_MKDIR             = (1 << 3),

	// Recursively make all components of the repo and workdir paths as
	// necessary.
	REPOSITORY_INIT_MKPATH            = (1 << 4),

	// libgit2 normally uses internal templates to initialize a new repo.
	// This flags enables external templates, looking the "template_path" from
	// the options if set, or the `init.templatedir` global config if not,
	// or falling back on "/usr/share/git-core/templates" if it exists.
	REPOSITORY_INIT_EXTERNAL_TEMPLATE = (1 << 5),

	// If an alternate workdir is specified, use relative paths for the gitdir
	// and core.worktree.
	REPOSITORY_INIT_RELATIVE_GITLINK  = (1 << 6),
};
