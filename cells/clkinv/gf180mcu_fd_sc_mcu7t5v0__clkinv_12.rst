=======================================
gf180mcu_fd_sc_mcu7t5v0__clkinv_x12
=======================================

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 symbol**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_12.symbol.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 symbol

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 schematic**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv.schematic.svg
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 schematic

**gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 layout**

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_12.layout.png
    :alt: gf180mcu_fd_sc_mcu7t5v0__clkinv_x12 layout



CLKINV_X12 is a clock inverter, 12X drive strength
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

.. image:: gf180mcu_fd_sc_mcu7t5v0__clkinv_12.png

| PIN CAPACITANCE (pf)

======= ======== ====================
**Pin** **Type** **Capacitance (pf)**
I       input    0.0471
======= ======== ====================

|
| DELAY AND OUTPUT TRANSITION TIME corresponding to min slew and load

+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| **Input Pin** | **Output** | **When Condition** | **Tin (ns)** | **Out Load (pf)** | **Delay (ns)** | **Tout (ns)** |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(LH)         | ZN(HL)     | default            | 0.0100       | 0.0010            | 0.0379         | 0.0158        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+
| I(HL)         | ZN(LH)     | default            | 0.0100       | 0.0010            | 0.0304         | 0.0182        |
+---------------+------------+--------------------+--------------+-------------------+----------------+---------------+

|
| DYNAMIC ENERGY

+---------------+--------------------+--------------+------------+-------------------+---------------------+
| **Input Pin** | **When Condition** | **Tin (ns)** | **Output** | **Out Load (pf)** | **Energy (uW/MHz)** |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(HL)     | 0.0010            | -0.1286             |
+---------------+--------------------+--------------+------------+-------------------+---------------------+
| I             | default            | 0.0100       | ZN(LH)     | 0.0010            | 0.9119              |
+---------------+--------------------+--------------+------------+-------------------+---------------------+

|
| LEAKAGE POWER

================== ==============
**When Condition** **Power (nW)**
!I                 0.3581
I                  0.3679
================== ==============

