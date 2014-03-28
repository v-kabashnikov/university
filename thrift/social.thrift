namespace java mmf.universities 


include "base.thrift"


service globalSearch {

	set<base.University> InstantSearchUniversity(1: string name )
	set<base.Faculty> InstantSearchFaculty(1: string name)
	set<base.Lecturer> InstantSearchFaculty(1: string name )
	set<base.Lecturer> SearchUniversity(1: string name, 2: i16 page )
	set<base.Faculty> SearchFaculty(1: string name, 2: i16 page )
	set<base.Lecturer> SearchLecturer(1: string name, 2: i16 page )	
                     }

struct FilterUniversity {
    1: string country
    2: string city
    3: string type

}
service university {
	set<base.University> RankedPage (1: i16 page)
	set<base.University> CustomSearchUniversity(1: FilterUniversity filter, 2: string name)
	set<base.University> FindNearBy(1: i64 longtitude, 2: i64 latitude)
	set<base.Faculty> ShowFacultiesFromUniversity(1: sting name)
	set<base.Lecturer> ShowLecturersFromUniversity(1: sting name)
	set<base.Lecturer> ShowLecturersFromFaculty(1: sting name)

}

struct FilterLecturer {
	1: string degree
	2: string country
	3: string city
}

service lecturer{
	set<base.Lecturer> FindLecturers(1: list<string> tags)
	set<base.Lecturer> CustomFindLecturers(1: list<string> tags)
	
}

						}

