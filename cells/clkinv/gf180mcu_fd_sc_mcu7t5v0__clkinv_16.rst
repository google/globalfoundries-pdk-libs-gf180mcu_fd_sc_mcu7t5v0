=======================================
gf180mcu_fd_sc_mcu7t5v0__clkinv_x16
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_16.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_16.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x16 layout



CLKINV_X16 is a clock inverter, 16X drive strength
|
| Attributes

============= ======================
**Attribute** **Value**
area          74.636800 µm\ :sup:`2`
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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_16.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0633
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | ZN(HL)     | default            | 0.0100       | 0.0010            | 0.0385         | 0.0161        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | ZN(LH)     | default            | 0.0100       | 0.0010            | 0.0309         | 0.0185        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(HL)     | 0.0010            | -0.1716             |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(LH)     | 0.0010            | 1.2367              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.4608
I                  0.4739
================== ==============

