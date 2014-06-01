namespace java mmf.universities



enum UniversityType{
	MATHEMATICAL
	PHILOLOGICAL
	PHILOSIPHICAL
	HUMANITARIAN 
}


struct University {
	0: string id
	1: string name
	2: string shortName
	3: string country
	4: string city
	5: string address
	6: UniversityType type
}

enum FacultyType{
	MATHEMATICAL
	PHILOLOGICAL
	PHILOSIPHICAL
	HUMANITARIAN 
}

struct Faculty {
	0: string id
	1: string name
	2: string shortName
	3: string country
	4: string city
	5: string address
	6: FacultyType type
	7: set<string> specialities
}

enum LecturerDegree{
	FIRST
	SECOND
	THIRD
	FOURTH
}


struct Lecturer {
	0: string id
	1: string name
	2: LecturerDegree degree
	3: string faculty
	4: set<string> interests
