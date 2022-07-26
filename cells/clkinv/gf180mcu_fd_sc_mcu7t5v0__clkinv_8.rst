=======================================
gf180mcu_fd_sc_mcu7t5v0__clkinv_8
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkinv_8 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_8.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_8 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkinv_8 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_8 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkinv_8 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_8.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_8 layout



CLKINV_X8 is a clock inverter, 8X drive strength

|
| Attributes

============= ======================
**Attribute** **Value**
area          39.513600 µm\ :sup:`2`
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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_8.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0314
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | ZN(HL)     | default            | 0.0100       | 0.0010            | 0.0375         | 0.0157        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | ZN(LH)     | default            | 0.0100       | 0.0010            | 0.0300         | 0.0181        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(HL)     | 0.0010            | -0.0859             |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(LH)     | 0.0010            | 0.5985              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.2554
I                  0.2620
================== ==============

