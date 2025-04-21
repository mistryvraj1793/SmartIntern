package com.grownited.controller.admin;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CollegeEntity;
import com.grownited.entity.StudentDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CollegeRepository;
import com.grownited.repository.StudentDetailRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentDetailController {
	@Autowired
	StudentDetailRepository repositoryStudentDetail;

	@Autowired
	CollegeRepository repositoryCollege;

	@Autowired
	Cloudinary cloudinary;

	@GetMapping("userstudentdetail")
	public String userStudentDetail(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		Optional<StudentDetailEntity> op = repositoryStudentDetail.findByUserId(userId);
		if (!op.isPresent()) {
			List<CollegeEntity> allColleges = repositoryCollege.findAll();

			// fetches the data from controller in allColleges to jsp
			model.addAttribute("allColleges", allColleges);
			return "StudentDetail";
		} else if (op.isPresent()) {
			return "redirect:/userviewstudentdetail";
		} else {
			return "redirect:/userdashboard";
		}
	}

	@PostMapping("saveuserstudentdetail")
	public String saveUserStudentDetail(StudentDetailEntity entityStudentDetail, UserEntity entityUser,
			MultipartFile profilePic, MultipartFile resume, HttpSession session) {
		// set Bydefault:
		entityStudentDetail.setCreatedAt(LocalDate.now());

		System.out.println(profilePic.getOriginalFilename());
		System.out.println(resume.getOriginalFilename());
		try {
			Map resultProfilePic = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			Map resultResume = cloudinary.uploader().upload(resume.getBytes(), ObjectUtils.emptyMap());
			System.out.println(resultProfilePic.get("url"));
			System.out.println(resultResume.get("url"));

			entityStudentDetail.setProfilePicPath(resultProfilePic.get("url").toString());
			entityStudentDetail.setResumePath(resultResume.get("url").toString());
		} catch (IOException e) {
			e.printStackTrace();
		}

		UserEntity user = (UserEntity) session.getAttribute("user");
		System.out.println(user);
		Integer userId = user.getUserId();
		System.out.println(userId);
		entityStudentDetail.setUserId(userId);

		// print the data from the table student_detail.
		System.out.println(entityStudentDetail.getStuCity());
		System.out.println(entityStudentDetail.getDegree());

		// stored the data into table student_detail through repository object.
		repositoryStudentDetail.save(entityStudentDetail);

		return "redirect:/userviewstudentdetail";
	}

	@GetMapping("adminliststudentdetails")
	public String adminListStudentDetails(Model model) {
		// fetchs the data from the table student_detail into controller list.
		List<Object[]> studentDetailList = repositoryStudentDetail.GetAll();

		// fetchs the data from controller in list into ListStudentDetail jsp.
		model.addAttribute("allStudentDetail", studentDetailList);

		return "ListStudentDetails";
	}

	@GetMapping("userviewstudentdetail")
	public String userViewStudentDetail(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		System.out.println(userId);
		List<Object[]> UserAllStudentDetail = repositoryStudentDetail.GetUserStudentDetailById(userId);

		model.addAttribute("UserAllStudentDetail", UserAllStudentDetail);

		return "UserViewStudentDetail";
	}

	@GetMapping("adminviewstudentdetail")
	public String adminViewStudentDetail(Integer studentDetailId, Model model) {
		// print the studentDetailId
		System.out.println("id==> " + studentDetailId);

		List<Object[]> allStudentDetail = repositoryStudentDetail.GetStudentDetailById(studentDetailId);

		model.addAttribute("allStudentDetail", allStudentDetail);
		// fetchs the data from table student_detail into controller in Optional op
		// through repositoryStudentDetail object.
//		Optional<StudentDetailEntity> op = repositoryStudentDetail.findById(studentDetailId);
//		if(op.isEmpty()) {
//			System.out.println("Not Found");
//		}
//		else {
//			//data Found:
//			StudentDetailEntity studentDetail = op.get();
//			//send data into ViewStudentDetail jsp.
//			model.addAttribute("studentDetail", studentDetail);
//		}
		return "ViewStudentDetail";
	}

	@GetMapping("usereditstudentdetail")
	public String userEditStudentDetail(Integer studentDetailid, HttpSession session, Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		Optional<StudentDetailEntity> op = repositoryStudentDetail.findByUserId(userId);
		if (!op.isPresent()) {
			return "redirect:/userstudentdetail";
		} else if (op.isPresent()) {
			List<CollegeEntity> allColleges = repositoryCollege.findAll();

			// fetches the data from controller in allColleges to jsp
			model.addAttribute("allColleges", allColleges);

			model.addAttribute("userEditStudentDetail", op.get());
			return "UserEditStudentDetail";
		} else {
			return "redirect:/userdashboard";
		}
	}

	@PostMapping("userupdatestudentdetail")
	public String userUpdateStudentDetail(StudentDetailEntity entityStudentDetail, MultipartFile profilePic, MultipartFile resume, HttpSession session) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    Integer userId = user.getUserId();
	    Optional<StudentDetailEntity> op = repositoryStudentDetail.findByUserId(userId);

	    if (op.isPresent()) {
	        StudentDetailEntity dbStudentDetail = op.get();

	        try {
	            if (profilePic != null && profilePic.getOriginalFilename() != null && profilePic.getOriginalFilename().length() > 0) {
	                Map resultProfilePic = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
	                dbStudentDetail.setProfilePicPath(resultProfilePic.get("url").toString());
	            }

	            if (resume != null && resume.getOriginalFilename() != null && resume.getOriginalFilename().length() > 0) {
	                Map resultResume = cloudinary.uploader().upload(resume.getBytes(), ObjectUtils.emptyMap());
	                dbStudentDetail.setResumePath(resultResume.get("url").toString());
	            }

	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	        // Update other fields
	        dbStudentDetail.setStuCity(entityStudentDetail.getStuCity());
	        dbStudentDetail.setStuState(entityStudentDetail.getStuState());
	        dbStudentDetail.setCollegeId(entityStudentDetail.getCollegeId());
	        dbStudentDetail.setDegree(entityStudentDetail.getDegree());
	        dbStudentDetail.setSemester(entityStudentDetail.getSemester());
	        dbStudentDetail.setTshirtSize(entityStudentDetail.getTshirtSize());

	        repositoryStudentDetail.save(dbStudentDetail);
	        return "redirect:/userviewstudentdetail";

	    } else {
	        return "redirect:/userdashboard";
	    }
	}


	@GetMapping("admineditstudentdetail")
	public String adminEditStudentDetail(StudentDetailEntity entityStudentDetail, Model model) {
		/*
		 * UserEntity user = (UserEntity) session.getAttribute("user"); Integer userId =
		 * user.getUserId(); Optional<StudentDetailEntity> op1 =
		 * repositoryStudentDetail.findByUserId(userId);
		 */
		Optional<StudentDetailEntity> op = repositoryStudentDetail.findById(entityStudentDetail.getStudentDetailId());
		if (!op.isPresent()) {
			return "redirect:/adminliststudentdetails";
		} else if (op.isPresent()) {
			List<CollegeEntity> allColleges = repositoryCollege.findAll();

			// fetches the data from controller in allColleges to jsp
			model.addAttribute("allColleges", allColleges);

			model.addAttribute("adminEditStudentDetail", op.get());
			return "EditStudentDetail";
		} else {
			return "redirect:/admindashboard";
		}
	}

	@PostMapping("adminupdatestudentdetails")
	public String adminUpdateStudentDetails(StudentDetailEntity entityStudentDetail) {
		Optional<StudentDetailEntity> op = repositoryStudentDetail.findById(entityStudentDetail.getStudentDetailId());
		if (op.isPresent()) {
			StudentDetailEntity dbStudentDetail = op.get();

			dbStudentDetail.setCollegeId(entityStudentDetail.getCollegeId());
			dbStudentDetail.setDegree(entityStudentDetail.getDegree());
			dbStudentDetail.setSemester(entityStudentDetail.getSemester());
			dbStudentDetail.setStuCity(entityStudentDetail.getStuCity());
			dbStudentDetail.setStuState(entityStudentDetail.getStuState());
			dbStudentDetail.setTshirtSize(entityStudentDetail.getTshirtSize());

			repositoryStudentDetail.save(dbStudentDetail);
			return "redirect:/adminliststudentdetails";
		} else {
			return "redirect:/admindashboard";
		}
	}

	@GetMapping("admindeletestudentdetail")
	public String adminDeleteStudentDetail(Integer studentDetailId) {
		// delete from table college where collegeId = :collegeId
		repositoryStudentDetail.deleteById(studentDetailId);

		return "redirect:/adminliststudentdetails";
	}

}
