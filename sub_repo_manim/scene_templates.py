# -*- coding: utf-8 -*-
"""
Created on Mon May 23 11:45:03 2022

@author: chathura
===========================================================================================================
General guidelines on writing and contributing to the scene templates

1. Every scene should have 'self.wait(1)' at the start and the end, regardless of the contents
2. Documentation must be provided on what each scene template does
    2.1. A small description of what the template does
    2.2. Layout parameters includes any useful parameter that helps to change the layout of the scene
         without changing the scene intergrity badly, these parameters should be touched only for small
         adjustments
    2.3. Requirements are the external scenes that the scene requires. Documentation should provide
        clear instructions as to where the resource should be located
3. Grouping objects in the animations is heavily encouraged, it provides overall readability and ease of
   animating
4. In the case of suggesting a change to the current scene templates, for the sake of intergrity, suggested
   changes should be written in comments, clearly explaining what was changed from the previous

===========================================================================================================      
"""
from manimlib import *

"""
===========================================================================================================
Scene Templates 1 - Introduction Scenes
===========================================================================================================
"""


"""
IntroCard-
Intro scene with NCL logo.

Layout parameters-
scale value of pic1
shift of gr1

Requirements- 
NCL logo in images folder
"""

class IntroCard(Scene):
    def construct(self):
        pic1=ImageMobject('images/NCL_LOGO_WIREFRAME.png').scale(0.65).shift(UP)
        text1=Text('National Cybersecurity',
                   font='Arial', font_size=40)
        text2=Text('R&D Labs',
                   font='Arial', font_size=40)
        gr1=VGroup(text1,text2).arrange(DOWN,buff=0.1).shift(1.2*DOWN)
        
        self.wait(0.5)
        self.play(GrowFromPoint(pic1,ORIGIN))
        self.wait(1)
        self.play(FadeIn(gr1,shift=UP))
        self.wait(1)
        self.play(FadeOut(gr1,shift=2*DOWN,scale=4),FadeOut(pic1,scale=4))
        self.wait(2)
        
"""
TitleText-
Title of the video

Layout parameters-
None

Requirements- 
None
"""
class TitleText(Scene):
    def construct(self):
        # Change the title here
        text1=Text('Log4shell Vulnerability', font="Consolas",
                    font_size=70,t2c={"Log4shell": BLUE})
        
        self.wait(1)
        
        self.play(FadeIn(text1))
        self.wait(2.5)
        self.play(FadeOut(text1))
        
        self.wait(1)

"""
===========================================================================================================
Scene Templates 2 - Text related scenes
===========================================================================================================
"""

"""
QuoteScene- 
Shows quotes from reputed figures and publications
text will represent the quote and qtext will represent
the name of the quoted thing

Layout parameters-
sgr1 and sgr2 can be shifted and scaled to attain desriable lay out
depending on the lenght of the quote these should be changed

Requirements-
None

"""

class QuotesScene(Scene):
    def construct(self):
        text1=Text('"[Log4Shell] is by far the single biggest,\nmost critical vulnerability ever"', font='Arial',font_size=40)
        qtext1=Text('Armit Yohan- CEO of Tenable',font='Arial',font_size=20).next_to(text1,DR)
        
        text2=Text("'...and even if you remediate the problem somebody's already in the\nnetwork ...It's going to be around as long as the Internet.'", font='Arial',font_size=30)
        qtext2=Text('Sean Gallagher\nSenior Threat Researcher, Sohpos',font='Arial',font_size=20).next_to(text2,DR)
        
        text3=Text("It is a severe threat according to the\ncybersecurity experts", font='Arial',font_size=40,
               t2c={'severe':RED_B})
        
        sgr1=VGroup(text1,qtext1)
        sgr2=VGroup(text2,qtext2).scale(0.82)
        gr1=VGroup(sgr1,sgr2).arrange(DOWN,buff=0.9)
        
        self.wait(1)
        self.play(FadeIn(sgr1))
        self.wait(2)
        self.play(FadeIn(sgr2))
        self.wait(4)
        self.play(FadeOut(gr1))
        self.wait(1)
        self.play(FadeIn(text3))
        self.wait(2)
        self.play(FadeOut(text3))
        self.wait(1)

"""
ColoredTextScene-
Shows text in colors on the screen. (To be improved more)
Uses scale() instead of font_size to change the font color

Layout parameters-
buff of gr1 can be used to

Requirements-
None
"""

class ColoredText(Scene):
    def construct(self):
        text1=Text("Aims of this video",font='Arial',color=PURPLE,weight=BOLD).scale(1.5)
        text2=Text("Provide basic understanding of the vulnerability",font='Arial',color=GREEN_C).scale(0.9).shift(DOWN)
        text3=Text("Demonstrate how to reproduce this vulnerability",font='Arial',color=GREEN_C).scale(0.9)
        
        gr1=VGroup(text1,text2,text3).arrange(DOWN,buff=0.9)
        
        self.wait(1)
        self.play(FadeIn(text1))
        self.wait(1)
        self.play(FadeIn(text2))
        self.wait(0.5)
        self.play(FadeIn(text3))
        self.wait(6)
        self.play(FadeOut(gr1))
        self.wait(1)
        
"""
PlainContentwithBullets-
Uses bullet points in the video, fading in and out each point one by one.
Usually used to emphasize on the key points of a subject

Layout parameters-
shift for text1
shift and buff for gr1

Requirements-
None
"""

class PlainContentwithBullets(Scene):
    def construct(self):
        text1=Text("Log4she*00vulnerability exists in widely \nused and critical systems such as:",
                   font='Consolas',font_size=35,t2c={'critical':RED}).shift(UL+UP)
        text2=Text('1. Amazon Web Services',font='Consolas',
                   font_size=30)
        text3=Text('2. iCloud',font='Consolas',
                   font_size=30)
        text4=Text('3. TenCentQQ',font='Consolas',
                   font_size=30)
        text5=Text('and many more...',font='Consolas',
                   font_size=30)
        gr1=VGroup(text2,text3,text4,text5).arrange(DOWN,buff=0.9,aligned_edge=LEFT).shift(2*LEFT+0*UP+1*DOWN)
        animationbullets=[
            FadeIn(gr1[0]),
            FadeIn(gr1[1]),
            FadeIn(gr1[2]),
            FadeIn(gr1[3])
            ]
        
        self.play(FadeIn(text1))
        self.wait(2)
        self.play(AnimationGroup(*animationbullets,lag_ratio=0.5))
        self.wait(3)
        self.play(FadeOut(text1),FadeOut(gr1))