// routes/student_login_route.js
import express from "express";
import {
  addStudent,
  getStudents,
  addManyStudents,
  getStudentById
} from "../controllers/student_login_controller.js";

const router = express.Router();

// Add one student
router.post("/", addStudent);

// Add many students
router.post("/bulk", addManyStudents);

// Get all students
router.get("/", getStudents);

// Get single student by stu_id
router.get("/:stu_id", getStudentById);

export default router;
