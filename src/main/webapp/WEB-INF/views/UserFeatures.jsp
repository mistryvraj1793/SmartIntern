<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SmartIntern | Features</title>
    <jsp:include page="UserCss.jsp"></jsp:include>
</head>
<body>

<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSidebar.jsp"></jsp:include>

<div class="container my-5">
    <h1 class="mb-4 text-primary">SmartIntern Features</h1>
    <h5>🚀 Seamless Internship Management Platform</h5>
    <p>SmartIntern simplifies the internship journey for students, mentors, and companies.</p>

    <h6>👨‍🎓 For Students</h6>
    <ul>
        <li>Browse and apply for a variety of internships.</li>
        <li>Track application and internship progress in real-time.</li>
        <li>Earn certificates upon successful completion.</li>
    </ul>

    <h6>🏢 For Companies</h6>
    <ul>
        <li>Create and manage internship openings.</li>
        <li>Review applications and select ideal candidates.</li>
        <li>Assign mentors and monitor internship deliverables.</li>
    </ul>

    <h6>🎓 For Faculty Mentors</h6>
    <ul>
        <li>Monitor student progress and status updates.</li>
        <li>Evaluate deliverables and provide structured feedback.</li>
        <li>Communicate directly with students and companies.</li>
    </ul>

    <h6>📊 Analytics & Reports</h6>
    <ul>
        <li>Real-time insights on applications, projects, and performance.</li>
        <li>Visual dashboards for tracking engagement and success rates.</li>
    </ul>

    <h6>🔒 Secure & User-Friendly</h6>
    <ul>
        <li>Role-based access and data privacy.</li>
        <li>Responsive, clean, and intuitive interface for all users.</li>
    </ul>

    <a href="userdashboard" class="btn btn-primary mt-3">Back to Dashboard</a>
</div>

<jsp:include page="UserFooter.jsp"></jsp:include>
<jsp:include page="UserJs.jsp"></jsp:include>

</body>
</html>
