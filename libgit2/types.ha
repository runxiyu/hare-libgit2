// Basic type (loose or packed) of any Git object.
export type object_t = enum {
	OBJECT_ANY =     -2, // Object can be any of the following
	OBJECT_INVALID = -1, // Object is invalid.
	OBJECT_COMMIT =   1, // A commit object.
	OBJECT_TREE =     2, // A tree (directory listing) object.
	OBJECT_BLOB =     3, // A file revision object.
	OBJECT_TAG =      4, // An annotated tag object.
};
