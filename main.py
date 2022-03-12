#!/data/data/com.termux/files/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  main.py
#  
#  Copyright 2022 Yisus7u7 <yisus7u7v@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

import PySimpleGUI as sg
import os

# theme
sg.theme('Material2')

# fonts
tl_font=("Sans", 16)
df_font=("Sans", 12)
# images
alpine_logo=('./resources/alpinelinux-logo.png')

layout = [
    [ 
     sg.Text("Welcome to proot-launcher!" + " " * 55, font=tl_font, text_color="#0D597F"),
     sg.Text("Release: 0.1.1-alpha", font=df_font)
        ],
    [
     sg.Text("powered by:" + " " * 18, font=df_font, text_color="#0D597F"), sg.Image(alpine_logo)
        ],
    [
     sg.Text(" \
      \
      ")
        ],
    [
     sg.Text("Alpine Container options:", font=df_font)
        ],
    [
     sg.Button("Install Container", font=df_font, tooltip="Install new Container", key='INSTALL'),
     sg.Button("Reinstall Container", font=df_font, tooltip="Reinstall alpine container (reset)", key='REINSTALL'),
     sg.Button("Uninstall container", font=df_font, tooltip="Delete alpine Container", key='REMOVE'),
     sg.Button("Use Google DNS", font=df_font, tooltip="Use Google DNS 8.8.8.8/8.8.4.4", key='DNS'),
     sg.Button("Launch proot shell", font=df_font, tooltip="Launch shell runing Alpine container", key='SHELL')
        ],
    [
     sg.Text("Container actions:", font=df_font)
        ],
    [
     sg.Button("Run Aplication", font=df_font, tooltip="Enter app or command name to launch app", key='RUN'),
     sg.Button("Install Aplication (Manual)", font=df_font, tooltip="Enter name for install app in the container", key='ADDAPP'),
     sg.Button("Uninstall aplication (Manual)", font=df_font, tooltip="Enter name for uninstall app in the container", key='DELAPP'),
     sg.Button("Install Aplication (Auto)", font=df_font, tooltip="Select pre-configured app for install", key='ADDAPP_CUTE')
        ],
    [
     sg.Button("About", font=df_font, button_color=("black", "white"), enable_events=True, size=(85, 0), key='ABOUT')
        ]

    ]

Window = sg.Window("proot-launcher", layout)

while True:
    event, values = Window.read()
    if event == sg.WINDOW_CLOSED:
        break
        
    if event == 'INSTALL':
        os.system('./lib/get_container.sh')
        
    if event == 'REINSTALL':
        os.system('./lib/reset_container.sh')
        
    if event == 'REMOVE':
        os.system('./lib/del_container.sh')
    
    if event == 'DNS':
        os.system('./lib/change_dns.sh')
    
    if event == 'SHELL':
        os.system('./lib/launch_container_shell.sh')
        
    if event == 'RUN':
        Window.close()
        os.system('./lib/run_app.sh')
    
    if event == 'ADDAPP':
        os.system('xfce4-terminal -e \"./lib/addapp.sh\"')
        
    if event == 'DELAPP':
        os.system('xfce4-terminal -e \"./lib/delapp.sh\"')
        
    if event == 'ADDAPP_CUTE':
        os.system('xfce4-terminal -e \"./lib/add_app_easy.sh\"')
        
    if event == 'ABOUT':
        sg.Popup("Autor: Yisus7u7 <yisus7u7v@gmail.com>", "proot-manager is a linux app emulator for termux environment")
        
