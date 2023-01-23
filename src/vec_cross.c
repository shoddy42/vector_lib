/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_cross.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 01:35:36 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:33:17 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

/**
 * @brief Matrix multiplication of @b a * @b b. Known as the cross product.
 * 
 * @param a 
 * @param b 
 * @return t_vec 
 */
t_vec	cross(t_vec a, t_vec b)
{
	t_vec	cross;

	cross[X] = (a[Y] * b[Z]) - (a[Z] * b[Y]);
	cross[Y] = (a[Z] * b[X]) - (a[X] * b[Z]);
	cross[Z] = (a[X] * b[Y]) - (a[Y] * b[X]);
	cross[W] = 0;
	return (cross);
}
