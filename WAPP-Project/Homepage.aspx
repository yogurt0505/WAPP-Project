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
                            <a href="login.html" class="btn btn-primary">Get Started </a>
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
                            <img src="./img/course1.jpg">
                        </div>
                        <div class="course__Info">
                            <h4>Learn Hangul (Part 1) - Introduction and First Letters (ㄱ, ㄴ, ㄷ, ㅏ)</h4>
                            <P>Learn ㄱ, ㄴ, ㄷ, ㅏ From Teacher Billy Korean</P>
                        <a href="login.html" class="btn btn-primary">Learn More</a>
                        </div>
                    </article>

                    <article class="course">
                        <div class="course__image">
                            <img src="./img/course3.jpg">
                        </div>
                        <div class="course__Info">
                        <h4>Learn Hangul (Part 3) - More Syllable Blocks and Consonants (ㄹ, ㅇ)</h4>
                        <p>Learn ㄹ, ㅇ From Teacher Billy Korean</p>
                        <a href="login.html" class="btn btn-primary">Learn More</a>
                        </div>
                    </article>

                    <article class="course">
                        <div class="course__image">
                            <img src="./img/course2.jpg">
                        </div>
                        <div class="course__Info">
                            <h4> Learn Hangul (Part 6) - Even More Vowels (ㅕ, ㅠ, ㅖ, ㅒ)</h4>                  
                            <p>Learn ㅕ, ㅠ, ㅖ, ㅒ From Teacher Billy Korean</p>
                            <a href="login.html" class="btn btn-primary">Learn More</a>
                        </div>
                        
                    </article>
                </div>
               </section> 
                
                <!--================================================== End of Course ==================================================-->


</asp:Content>
