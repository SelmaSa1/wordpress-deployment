#!/bin/bash
# deployment.sh - Selma Sahin - 1.6.2021

scp plugins.zip kx84u_bbw@5ia18c.root-systems.ch:sites/5ia18c.root-systems.ch/sahin/

scp themes.zip kx84u_bbw@5ia18c.root-systems.ch:sites/5ia18c.root-systems.ch/sahin/

scp uploads.zip kx84u_bbw@5ia18c.root-systems.ch:sites/5ia18c.root-systems.ch/sahin/

scp dump.sql kx84u_bbw@5ia18c.root-systems.ch:sites/5ia18c.root-systems.ch/sahin/

ssh kx84u_bbw@5ia18c.root-systems.ch git clone https://github.com/WordPress/WordPress.git --branch 5.7.2 --single-branch sites/5ia18c.root-systems.ch/sahin/wp/

ssh kx84u_bbw@5ia18c.root-systems.ch unzip sites/5ia18c.root-systems.ch/sahin/themes.zip -d sites/5ia18c.root-systems.ch/sahin/wp/wp-content/themes

ssh kx84u_bbw@5ia18c.root-systems.ch unzip sites/5ia18c.root-systems.ch/sahin/uploads.zip -d sites/5ia18c.root-systems.ch/sahin/wp/wp-content/uploads

ssh kx84u_bbw@5ia18c.root-systems.ch unzip sites/5ia18c.root-systems.ch/sahin/plugins.zip -d sites/5ia18c.root-systems.ch/sahin/wp/wp-content/plugins
