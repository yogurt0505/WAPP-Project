<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotStudent_courses.aspx.cs" Inherits="WAPP_Project.NotStudent_courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Let's Learn Hangul! - Learn Korean Ep. 3
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<section class="courses">
                <h2>Courses</h2>
                <div class="container courses__Container">
                    <article class="course">
                        <div class="course__image">
                            <img src="./img/LK1.jpg">
                        </div>
                        <div class="course__Info">
                            <h4>Learn Korean Ep. 1: How to say "Have to~" in Korean</h4>
                            <P>Learn How to say "Have to~" From Teacher Billy Korean</P>
                        <a href="Course1.aspx" class="btn btn-primary">Learn More</a>
                        </div>
                    </article>

                    <article class="course">
                        <div class="course__image">
                            <img src="./img/LK2.jpg">
                        </div>
                        <div class="course__Info">
                            <h4>Learn Korean Ep. 2: Conjugating the ~요 form</h4>
                            <P>Learn Conjugating the ~요 form From Teacher Billy Korean</P>
                        <a href="Course2.aspx" class="btn btn-primary">Learn More</a>
                        </div>
                    </article>

                    <article class="course">
                        <div class="course__image">
                            <img src="./img/LK3.jpg">
                        </div>
                        <div class="course__Info">
                        <h4>Learn Korean Ep. 3: "Want~" and "Want to~" 원하다 vs. ~고 싶다</h4>
                        <p>Learn "Want~" and "Want to~" From Teacher Billy Korean</p>
                        <a href="Course3.aspx" class="btn btn-primary">Learn More</a>
                        </div>
                    </article>



                    <h4>*Non-Student Can Only Access 3 Courses*</h4>
                     <div class="signup__login"><a href="Login.aspx"><u>Login To Access More Courses</u></a></div>
                </div>
               </section> 
</asp:Content>
