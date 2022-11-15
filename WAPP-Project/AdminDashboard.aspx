<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WAPP_Project.AdminDashboard" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Let's Learn Hangul!</title>

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;900&display=swap" rel="stylesheet">
        </head>

<body>
    <nav>
        <div class="container nav__container">
          
            <a href="index.html"><h4>Let's Learn Hangul!</h4></a>

            
            <ul class="nav__menu">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="course.html">Course</a></li>
                <li class="nav__profile">
                    <div class="profile__picture">
                        <img src="./img/rick.gif">
                    </div>
                        <ul>
                            <li><a href="admin_dashboard.html">Dashboard</a></li>
                            <li><a href="">Log Out</a></li>

                        </ul>
                    

                </li>
            </ul>
                <button id="open-menu-btn"><i class="uil uil-bars"></i></button>
                <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>  
        </div>
        </nav>

      <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
      

<section class="dashboard">
    <div class="container dashboard__container">
        <aside>
            <ul>
                <li>
                    <a href="admin_dashboard.html" class="active">
                        <i class="uil uil-dashboard"></i>
                        <h5>Dashboard</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_course.html">
                        <i class="uil uil-book-alt"></i>
                        <h5>Course</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_student.html">
                        <i class="uil uil-user"></i>
                        <h5>Student</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_feedback.html">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_password.html">
                        <i class="uil uil-key-skeleton"></i>
                        <h5>Change Password</h5>
                    </a>
                </li>
                
            </ul>
        </aside>

        <main>
            <h1>Dashboard</h1>
            <div class="insights">
                <div class="student">
                    <span class="material-symbols-outlined">person</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Student Register</h3>
                            <h1>30</h1>
                        </div>
                    </div>
                    <small class="text-muted">Target Register Student  : 50</small>
                </div>
                <div class="courses">
                    <span class="material-symbols-outlined">book</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Register Course</h3>
                            <h1>30</h1>
                        </div>
                    </div>
                    <small class="text-muted">Target Register Course  : 50</small>
                </div>
            </div>

            <div class="recent-register">
                <h1>Recent Register Student</h1>
                <table>
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
           </div>
</section>
          <asp:TextBox ID="searchkey" runat="server"></asp:TextBox> <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="Search_Click" />
        <div>
            <asp:PlaceHolder ID="ViewCourse" runat="server"></asp:PlaceHolder>
        </div>
    </form>
 



 <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
    </html>
