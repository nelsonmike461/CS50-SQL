CREATE INDEX idx_students_id ON students(id);
CREATE INDEX idx_courses_id ON courses(id);
CREATE INDEX idx_enrollments_student_id ON enrollments(student_id);
CREATE INDEX idx_enrollments_course_id ON enrollments(course_id);
CREATE INDEX idx_requirements_id ON requirements(id);
CREATE INDEX idx_satisfies_course_id ON satisfies(course_id);
CREATE INDEX idx_satisfies_requirement_id ON satisfies(requirement_id);
