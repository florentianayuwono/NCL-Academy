# -*- coding: utf-8 -*-
"""
Created on Tue May 17 14:40:57 2022

@author: chath
"""

from manimlib import *

class SquareToCircle(Scene):
    def construct(self):
        circle = Circle()
        circle.set_fill(BLUE, opacity=0.1)
        circle.set_stroke(BLUE_E, width=4)
        square = Square()
        square.set_fill(GREEN, opacity=0.5)
        square.set_stroke(GREEN_E,width=4)

        self.play(ShowCreation(circle))
        self.wait(3)
        self.play(ReplacementTransform(circle,square))
        self.wait(0.5)

class TextExample(Scene):
    def construct(self):
        # To run this scene properly, you should have "Consolas" font in your computer
        # for full usage, you can see https://github.com/3b1b/manim/pull/680
        text = Text("Here is a text", font="Consolas", font_size=90)
        difference = Text(
            """
            The most important difference between Text and TexText is that\n
            you can change the font more easily, but can't use the LaTeX grammar
            """,
            font="Arial", font_size=24,
            # t2c is a dict that you can choose color for different text
            t2c={"Text": BLUE, "TexText": BLUE, "LaTeX": ORANGE}
        )
        VGroup(text, difference).arrange(DOWN, buff=1)
        self.play(Write(text))
        self.play(FadeIn(difference, UP))
        self.wait(3)

        fonts = Text(
            "And you can also set the font according to different words",
            font="Arial",
            t2f={"font": "Consolas", "words": "Consolas"},
            t2c={"font": BLUE, "words": GREEN}
        )
        fonts.set_width(FRAME_WIDTH - 1)
        slant = Text(
            "And the same as slant and weight",
            font="Consolas",
            t2s={"slant": ITALIC},
            t2w={"weight": BOLD},
            t2c={"slant": ORANGE, "weight": RED}
        )
        VGroup(fonts, slant).arrange(DOWN, buff=0.8)
        self.play(FadeOut(text), FadeOut(difference, shift=DOWN))
        self.play(Write(fonts))
        self.wait()
        self.play(Write(slant))
        self.wait()
        
class IntroText(Scene):
    def construct(self):
        # Change the title here
        text1=Text('Log4shell Vulnerability', font="Consolas",
                    font_size=70,t2c={"Log4shell": BLUE})
        text2=Text("NCL Presents", font='Bierstadt',font_size=35,
                    color=ORANGE)
        VGroup(text1,text2).arrange(DOWN,buff=2)
        
        self.wait(2)
        self.play(FadeIn(text1))

        self.play(FadeIn(text2))
        self.wait(1)
        self.play(FadeOut(text1),FadeOut(text2))
        
        
class ContentleftPicright(Scene):
    def construct(self):
        # Content should be here
        text1=Text("Log4shell is one of \nthe most severe \nvulnerabilities \nto ever exist",
                    font='Consolas',font_size=40)
        # Link the correct path for the image
        pic1=ImageMobject('images/Skull_and_Crossbones.svg')
        
        self.play(FadeIn(text1.shift(2*LEFT)),FadeIn(pic1.shift(3.5*RIGHT)))
        
        self.wait(2)
        self.play(FadeOut(text1),pic1.animate.shift(3.5*LEFT).scale(2))
        self.play(FadeOut(pic1))
class PlainContent(Scene):
    def construct(self):
        text1=Text("Log4shell vulnerability was found",
                    font='Consolas',font_size=40,
                    t2c={'9 December 2021':BLUE_E})
        text2=Text("in 9 December 2021",
                    font='Consolas',font_size=40,
                    t2c={'9 December 2021':BLUE_E})
        text3=Text("However, this vulnerability has exited since 2013",
                   font='consolas',font_size=40,
                   t2c={'2013':RED})
        text4=Text("This vulnerability uses an exploit in the\nnetwork logger framework called log4j\nthis exploit allows remote code execution",
                   font='Consolas',font_size=35,
                   t2c={'log4j':PURPLE})
        gr=VGroup(text1,text2).arrange(DOWN,buff=0.1)
        VGroup(gr,text3,text4).arrange(DOWN,buff=1)
        
        self.wait(1)
        self.play(FadeIn(gr),FadeIn(text3),FadeIn(text4))
        self.wait(5)
        self.play(FadeOut(gr),FadeOut(text4))
        self.play(text3.animate.shift(ORIGIN))
        self.wait(1)
        self.play(FadeOut(text3))
class PlainContentwithBullets(Scene):
    def construct(self):
        text1=Text("Log4shell vulnerability exists in widely \nused and critical systems such as:",
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
        # self.add(gr1.shift(2.5*LEFT+0*UP+0.5*DOWN))
        self.wait(2)
        self.play(AnimationGroup(*animationbullets,lag_ratio=0.7))
        self.wait(3)
        self.play(FadeOut(text1),FadeOut(gr1))

class PlainContent1(Scene):
    def construct(self):
        text1=Text("In this video we will show how you can reproduce",
                    font='Consolas',font_size=40)
        text2=Text("this vulnerability using NCL resources",
                    font='Consolas',font_size=40)
        gr=VGroup(text1,text2).arrange(DOWN,buff=0.1)
        # VGroup(gr,text3).arrange(DOWN,buff=1)
        
        self.wait(1)
        self.play(FadeIn(gr))
        self.wait(5)
        self.play(FadeOut(gr))
        # self.play(text3.animate.shift(0.75*UP))
        self.wait(3)
        # self.play(FadeOut(text3))
        # self.wait(1)
        # self.wait(1)