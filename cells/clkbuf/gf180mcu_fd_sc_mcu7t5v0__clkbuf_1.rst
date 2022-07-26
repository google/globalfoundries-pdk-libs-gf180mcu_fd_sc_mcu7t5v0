=======================================
gf180mcu_fd_sc_mcu7t5v0__clkbuf_1
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 layout



CLKBUF_X1 is a clock buffer, 1X drive strength

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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_1.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0036
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | Z(LH)      | default            | 0.0100       | 0.0010            | 0.1522         | 0.0383        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | Z(HL)      | default            | 0.0100       | 0.0010            | 0.1414         | 0.0360        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(LH)      | 0.0010            | 0.0900              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(HL)      | 0.0010            | 0.1647              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.1041
I                  0.1020
================== ==============

