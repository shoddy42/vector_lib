/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_length.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 01:39:35 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:32:00 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

/**
 * @brief Returns the square of the length of the vector.
 * 
 * @param vec The vector.
 * @return double 
 */
double	vec_length_squared(t_vec vec)
{
	return (sqr(vec[X]) + sqr(vec[Y]) + sqr(vec[Z]));
}

/**
 * @brief Returns the length of the vector.
 * 		  Works by doing vec_length_squared and taking the square root of it.
 * 
 * @param vec The vector.
 * @return double 
 */
double	vec_length(t_vec vec)
{
	return (sqrt(vec_length_squared(vec)));
}
