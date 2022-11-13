<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WAPP_Project.test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">


    <!--================================================== Start of About Page ==================================================-->
<section class="about__us">
                        <div class="container about__us-container">
                            <div class="about__us-left">
                                <img src="./img/achievement.svg" alt="achievement">
                            </div>
                            
                            <div class="about__us-right">
                                <h1>About Us</h1>
                                <p>Let's Learn Hangul! is a website that made by 4 four student from Asia Pacific University. Our aim is to develop and implement a user-friendly Korean Language Learning Platform that eveyone can use.</p>
                                <div class="about__cards">
                                    <article class="about__card">
                                        <span class="about__icon">
                                            <i class="uil uil-money-bill-slash"></i>
                                        </span>
                                        <h3>No Subscription Needed</h3>
                                        
                                    </article>
                                
                               
                                    <article class="about__card">
                                        <span class="about__icon">
                                            <i class="uil uil-book"></i>
                                        </span>
                                        <h3>20+ </h3>
                                        <h3>Courses</h3>
                                    </article>
                                
                                
                                    <article class="about__card">
                                        <span class="about__icon">
                                            <i class="uil uil-grin"></i>
                                        </span>
                                        <h3>Friendly</h3>
                                        <h3>UI</h3>
                                        
                                    </article>
                                </div>
                            </div>
                        </div>
                        
                     </section>
                     <!--================================================== End of About Page ==================================================-->
                     <!--================================================== Start of Team page ==================================================-->

                     <section class="team">
                        <h2>Our Team</h2>
                        <div class="container team__container">
                            <article class="team__member">
                                <div class="team__member-image">
                                    <img src="./img/yogurt.png">
                                </div>
                                <div class="team__member-info">
                                    <h4>Khor Chin Yee</h4>
                                    <p>Web Developer</p>
                                </div>
                                <div class="team__member-socials">
                                    <a href=""><i class="uil uil-instagram"></i></a>
                                    <a href=""><i class="uil uil-facebook"></i></a>
                                    <a href=""><i class="uil uil-twitter"></i></a>
                                    <a href=""><i class="uil uil-linkedin-alt"></i></a>
                                </div>
                            </article>
                            <article class="team__member">
                                <div class="team__member-image">
                                    <img src="./img/shunzhen.jpg">
                                </div>
                                <div class="team__member-info">
                                    <h4>Koh Shun Zhen</h4>
                                    <p>Web Developer</p>
                                </div>
                                <div class="team__member-socials">
                                    <a href=""><i class="uil uil-instagram"></i></a>
                                    <a href=""><i class="uil uil-facebook"></i></a>
                                    <a href=""><i class="uil uil-twitter"></i></a>
                                    <a href=""><i class="uil uil-linkedin-alt"></i></a>
                                </div>
                            </article>
                            <article class="team__member">
                                <div class="team__member-image">
                                    <img src="./img/alantoh.jpg">
                                </div>
                                <div class="team__member-info">
                                    <h4>Alan Toh Chun Hau</h4>
                                    <p>Web Designer</p>
                                </div>
                                <div class="team__member-socials">
                                    <a href=""><i class="uil uil-instagram"></i></a>
                                    <a href=""><i class="uil uil-facebook"></i></a>
                                    <a href=""><i class="uil uil-twitter"></i></a>
                                    <a href=""><i class="uil uil-linkedin-alt"></i></a>
                                </div>
                            </article>
                            <article class="team__member">
                                <div class="team__member-image">
                                    <img src="./img/rick.gif">
                                </div>
                                <div class="team__member-info">
                                    <h4>Rick</h4>
                                    <p>Web Designer</p>
                                </div>
                                <div class="team__member-socials">
                                    <a href=""><i class="uil uil-instagram"></i></a>
                                    <a href=""><i class="uil uil-facebook"></i></a>
                                    <a href=""><i class="uil uil-twitter"></i></a>
                                    <a href=""><i class="uil uil-linkedin-alt"></i></a>
                                </div>
                            </article>
                        </div>
                     </section>
                     <!--================================================== End of Team Page ==================================================-->
                    <!--================================================== Start of Contact Page ==================================================-->
                    <section class="contact">
                        <div class="container contact__container">
                            <aside class="contact__aside">
                                <div class="aside__image">
                                    <img src="./img/contact.svg">
                                </div>
                                <h2>Don't Be Shy ! Ask Us Any Question</h2>
                                <p>Feel Free To Contact Us If You Encounter Any Question Or Problem. </p>
                                    <P>
                                        Monday - Friday 7.00am - 5.00pm (MYT)
                                    </P>

                                <ul class="contact__details">
                                    <li>
                                        <i class="uil uil-mobile-android"></i>
                                        <h5>+03-8996 1000</h5>
                                    </li>
                                    <li>
                                        <i class="uil uil-envelope-minus"></i>
                                        <h5>Hangul@gmail.com</h5>
                                    </li>
                                    <li>
                                        <i class="uil uil-location-pin-alt"></i>
                                        <h5>Jalan Teknologi 5, Taman Teknologi</h5>
                                    </li>
                                </ul>
                            
                            </aside>

                            <form class="contact__form">
                                <div class="form__name">
                                    <input type="text" name="First Name" placeholder="First Name" required>
                                    <input type="text" name="Last Name" placeholder="Last Name" required>
                                </div>
                                <input type="email" name="Email Address" placeholder="Your Email Address" required>
                                <textarea name="message" rows="7" placeholder="Message"required></textarea>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </section>

    
</asp:Content>