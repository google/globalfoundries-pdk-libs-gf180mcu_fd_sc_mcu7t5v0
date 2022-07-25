=======================================
gf180mcu_fd_sc_mcu7t5v0__clkinv_2
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkinv_2 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_2.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_2 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkinv_2 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_2.schematic.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_2 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkinv_2 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_2.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_2 layout



CLKINV_X2 is a clock inverter, 2X drive strength

|
| Attributes

============= ======================
**Attribute** **Value**
area          13.171200 µm\ :sup:`2`
============= ======================

|
| OUTPUT FUNCTIONS

============== ============
**Output Pin** **Function**
ZN             (!I)
============== ============

|
| TRUTH TABLE FOR ZN

===== ======
**I** **ZN**
0     1
1     0
===== ======

|
| FUNCTIONAL SCHEMATIC

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_2.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0080
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | ZN(HL)     | default            | 0.0100       | 0.0010            | 0.0414         | 0.0188        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | ZN(LH)     | default            | 0.0100       | 0.0010            | 0.0335         | 0.0212        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(HL)     | 0.0010            | -0.0206             |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(LH)     | 0.0010            | 0.1509              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.1014
I                  0.1030
================== ==============

