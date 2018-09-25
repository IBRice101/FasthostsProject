<%@ Page Title="" Language="C#"MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../Scripts/CarouselScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <div class="slideshow-container">

    <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="https://www.w3schools.com/howto/img_nature_wide.jpg" alt="Image 1" style="width:100%">
        <div class="text">Lorem Ipsum</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="https://www.w3schools.com/howto/img_fjords_wide.jpg" alt="Image 2" style="width:100%">
        <div class="text">Dolor Sit Amet</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="https://www.w3schools.com/howto/img_mountains_wide.jpg" alt="Image 3" style="width:100%"/>
        <div class="text">Consectetur Adipiscing Elit</div>
    </div>

    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
    </div>

    </section>
    <section>
        <div class="content1">
        <div class="text-box">
            <h1>Lorem Ipsum</h1>
            <br />
            <p>Dolor sit amet, consectetur adipiscing elit. Morbi quis tempus risus. Donec cursus efficitur magna a molestie. Etiam et urna risus. Etiam fermentum odio eros, vitae facilisis sem molestie sit amet. Aliquam a ex convallis, elementum nibh in, porta risus. Cras in venenatis enim. Phasellus ultrices commodoturpis gravida pellentesque.</p>
        </div>
        <div class="text-box">
            <h1>Lorem Ipsum</h1>
            <br />
            <p>Dolor sit amet, consectetur adipiscing elit. Morbi quis tempus risus. Donec cursus efficitur magna a molestie. Etiam et urna risus. Etiam fermentum odio eros, vitae facilisis sem molestie sit amet. Aliquam a ex convallis, elementum nibh in, porta risus. Cras in venenatis enim. Phasellus ultrices commodo turpis gravida pellentesque.</p>
        </div>
        <div class="text-box">
            <h1>Lorem Ipsum</h1>
            <br />
            <p>Dolor sit amet, consectetur adipiscing elit. Morbi quis tempus risus. Donec cursus efficitur magna a molestie. Etiam et urna risus. Etiam fermentum odio eros, vitae facilisis sem molestie sit amet. Aliquam a ex convallis, elementum nibh in, porta risus. Cras in venenatis enim. Phasellus ultrices commodo turpis gravida pellentesque.</p>
        </div>
    </div>
</section>
</asp:Content>

