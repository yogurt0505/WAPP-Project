<%@ Page Title="Let's Learn Hangul! - Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WAPP_Project.Homepage" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Let's Learn Hangul! - Homepage
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">
  
     <header>
                    <div class="container header__container">
                        <div class="header__left">
                            <h1>Let's Learn Hangul!</h1>
                            <h4>Korean Language Learning Center</h4>
                            <P>The Best Platform You Can Find To Learn Korean. Thousands of lessons. No credit card needed.</P>
                            <a href="Login.aspx" class="btn btn-primary">Get Started </a>
                        </div>
                        <div class="header__right">
                            <div class="header_right-image">
                                <img src="img/header.svg">
                            </div>
                        </div>
                    </div>
                </header>

     <section class="courses">
                <h2>Popular Courses</h2>
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

                 
               </section> 
                
                <!--================================================== End of Course ==================================================-->


</asp:Content>
