=======================================
gf180mcu_fd_sc_mcu7t5v0__clkbuf_8
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8.schematic.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8 layout



CLKBUF_X8 is a clock buffer, 8X drive strength

|
| Attributes

============= ======================
**Attribute** **Value**
area          57.075200 µm\ :sup:`2`
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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkbuf_8.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0112
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | Z(LH)      | default            | 0.0100       | 0.0010            | 0.1853         | 0.0347        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | Z(HL)      | default            | 0.0100       | 0.0010            | 0.1825         | 0.0336        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(LH)      | 0.0010            | 0.7182              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | Z(HL)      | 0.0010            | 0.9260              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.3408
I                  0.3628
================== ==============

