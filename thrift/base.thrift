namespace java mmf.universities



enum University_Type{
	MATHEMATICAL
	PHILOLOGICAL
	PHILOSIPHICAL
	HUMANITARIAN 
}


struct University {
	0: string key
	1: string name
	2: string short_name
	3: string country
	4: string city
	5: string address
	6: University_Type type
}

enum Faculty_Type{
	MATHEMATICAL
	PHILOLOGICAL
	PHILOSIPHICAL
	HUMANITARIAN 
}

struct Faculty {
	0: string key
	1: string name
	2: string short_name
	3: string country
	4: string city
	5: string address
	6: Faculty_Type type
	7: set<string> specialities
}

struct Lecturer {
	0: string key
	1: string name
	2: string degree
	3: string faculty
	4: set<string> interests
