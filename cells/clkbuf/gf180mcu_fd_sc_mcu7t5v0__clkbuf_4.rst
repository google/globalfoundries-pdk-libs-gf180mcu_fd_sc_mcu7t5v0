=======================================
gf180mcu_fd_sc_mcu7t5v0__clkbuf_4
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 layout



CLKBUF_X4 is a clock buffer, 4X drive strength

|
| Attributes

============= ======================
**Attribute** **Value**
area          30.732800 µm\ :sup:`2`
============= ======================

|
| OUTPUT FUNCTIONS

============== ============
**Output Pin** **Function**
Z              I
============== ============

|
| TRUTH TABLE FOR Z

===== =====
**I** **Z**
1     1
0     0
===== =====

|
| FUNCTIONAL SCHEMATIC

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_4.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0055
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | Z(LH)      | default            | 0.0100       | 0.0010            | 0.1968         | 0.0359        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | Z(HL)      | default            | 0.0100       | 0.0010            | 0.1803         | 0.0333        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(LH)      | 0.0010            | 0.3625              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(HL)      | 0.0010            | 0.4629              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.1814
I                  0.2057
================== ==============

