/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_unit.c                                         :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 01:40:14 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:29:47 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

/**
 * @brief Will return a "normalized" or unit vector.
 * 		  A unit vector is a vector with a length of 1.
 * 
 * @param vec The original vector.
 * @return t_vec The vector transformed to have length 1.
 */
t_vec	vec_unit(t_vec vec)
{
	return (vec / vec_length(vec));
}
