namespace java mmf.universities 


include "base.thrift"


struct GlobalSearchResult {
    1: set<base.University> universities
    2: set<base.Faculty> faculties
    3: set<base.Lecturer> lecturers
}


service GlobalSearch {
	set<base.SearchItem> autocomplete(1: string queryString)
	GlobalSearchResult search(1: string queryString)
}

struct FilterUniversity {
    1: string countryID
    2: string cityID
    3: base.UniversityType type
    4: string name
}

service UniversitiesService {
	set<base.University> customSearchUniversity(1: FilterUniversity filter)
	set<base.University> findNearBy(1: string universityID)
	base.University find(1: string key)
	void delete(1: string key)
	base.University add(1: University new)
	base.University edit(1: University edit)
}

struct FilterFaculty {
    1: string countryID
    2: string cityID
    3: base.FacultyType type
    4: string name
}

service FacultiesService {
	set<base.Faculty> customSearchFaculty(1: FilterFaculty filter)
	set<base.Faculty> showFacultiesFromUniversity(1: string key)
	base.Faculty find(1: string key)
	void delete(1: string key)
	base.Faculty add(1: Faculty new)
	base.Faculty edit(1: Faculty edit)
}

struct FilterLecturer {
	1: LecturerDegree degree
	2: string countryID
	3: string cityID
	4: set<string> interests
	5: string name
}
service LecturesService {
	set<base.Lecturer> customSearchLecturer(1: FilterLecturer filter)
	set<base.Lecturer> showFromUniversity(1: string key)
	set<base.Lecturer> showFromFaculty(1: string key)
	set<base.Lecturer> find(1: list<string> tags)
	set<base.Lecturer> customFind(1: list<string> tags)
	base.Lecturer find(1: string key)
	void delete(1: string key)
	base.Lecturer add(1: Lecturer new)
	base.Lecturer edit(1: Lecturer edit)
}




