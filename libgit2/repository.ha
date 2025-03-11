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
