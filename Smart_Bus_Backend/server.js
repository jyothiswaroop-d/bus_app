import express from "express";
import dotenv from "dotenv";
import connectDB from "./config/db.js";

// Load environment variables
dotenv.config();

// Connect to MongoDB
connectDB();

// Initialize express app
const app = express();

// Middleware to parse JSON
app.use(express.json());
// Import routes
import studentRoutes from "./routes/student_login_route.js";

// Register routes
app.use("/api/students", studentRoutes);

// Test root route
app.get("/", (req, res) => {
  res.send("Smart Bus Backend Running ✅");
});

// Start server
app.listen(process.env.PORT || 5000, () =>
  console.log(`Server running on port ${process.env.PORT || 5000}`)
);
