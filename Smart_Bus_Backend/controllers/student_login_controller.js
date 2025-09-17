// controllers/student_login_controller.js
import Student_login from "../models/student_login.js";

// Add one student
export const addStudent = async (req, res) => {
  try {
    const student = await Student_login.create(req.body);
    res.status(201).json(student);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// Add many students
export const addManyStudents = async (req, res) => {
  try {
    const students = await Student_login.insertMany(req.body); // expects array
    res.status(201).json(students);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

// Get all students
export const getStudents = async (req, res) => {
  try {
    const students = await Student_login.find();
    res.json(students);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Get student by ID
export const getStudentById = async (req, res) => {
  try {
    const student = await Student_login.findOne({ stu_id: req.params.stu_id });
    if (!student) {
      return res.status(404).json({ message: "Student not found" });
    }
    res.json(student);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
