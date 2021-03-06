/* -*- c++ -*- */
/*
 * Copyright 2006 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#include <math.h>

/*!
 * \brief high performance Automatic Gain Control class with attack and decay rates
 *
 * For Power the absolute value of the complex number is used.
 */


class gri_agc2_cc {

 public:
  gri_agc2_cc (float attack_rate = 1e-1, float decay_rate = 1e-2, float reference = 1.0,
	       float gain = 1.0, float max_gain = 0.0);
  float decay_rate ();
  float attack_rate ();
  float reference ();
  float gain ();
  float max_gain ();
  void set_decay_rate (float rate);
  void set_attack_rate (float rate);
  void set_reference (float reference);
  void set_gain (float gain);
  void set_max_gain(float max_gain);
  };
