/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vector.h                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/12/19 22:52:56 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:40:08 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef VECTOR_H
# define VECTOR_H
# include <math.h>

/**
 * @brief A vector containing 4 doubles.
 * @details	vector_size requires a power of 2.
 * 			Can be accessed like an array. Use enums XYZW, or RGBA for clarity.
 * 
 * @example t_vec vector;
 * 			vector[0] = 7.0f;
 * 			vector[X] = 2.4;
 * 			vector[G] = 6;
 */
typedef double	t_vec __attribute__ ((vector_size (4 * sizeof(double))));

typedef enum e_vecnum
{
	X,
	Y,
	Z,
	W
}	t_vecnum;

typedef enum e_vec_colour
{
	R,
	G,
	B,
	A
}	t_vec_colour;

double	dot(t_vec a, t_vec b);
t_vec	cross(t_vec a, t_vec b);
t_vec	vec_unit(t_vec vec);
double	sqr(double x);
double	vec_length(t_vec vec);
double	vec_length_squared(t_vec vec);

#endif