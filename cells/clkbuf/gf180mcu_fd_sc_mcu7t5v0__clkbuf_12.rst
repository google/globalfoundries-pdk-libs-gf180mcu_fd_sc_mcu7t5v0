=======================================
gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_12.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_12.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_x12 layout



CLKBUF_X12 is a clock buffer, 12X drive strength

|
| Attributes

============= ======================
**Attribute** **Value**
area          83.417600 µm\ :sup:`2`
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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_12.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0169
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | Z(LH)      | default            | 0.0100       | 0.0010            | 0.1862         | 0.0342        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | Z(HL)      | default            | 0.0100       | 0.0010            | 0.1799         | 0.0329        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(LH)      | 0.0010            | 1.1143              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(HL)      | 0.0010            | 1.4233              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.5046
I                  0.5156
================== ==============

