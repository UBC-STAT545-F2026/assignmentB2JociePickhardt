#' Converting units after moving to Canada
#'
#' This function converts common variables used in daily life from imperial
#' units to metric units. The inputs are in miles, degrees Fahrenheit, ounces,
#' and pounds. The outputs are in kilometers, degrees Celsius, milliliters,
#' and kilograms. By default, each output is rounded to 2 decimal places.
#'
#' @param distance_to_school_mi A non-negative number: the distance to school in miles.
#' @param temp_F A number: the temperature in degrees Fahrenheit.
#' @param recipe_oz A non-negative number: a volume in ounces.
#' @param gym_weight_lbs A non-negative number: a weight in pounds.
#' @param digits A whole number: how many decimal places to round the outputs to. Defaults to 2.
#'
#' @return A tibble with four rows (Distance, Temperature, Volume, Weight) and
#'   the columns `variable`, `input`, `in_unit`, `output`, and `out_unit`.
#'
#' @examples
#' moving_to_canada(10, 68, 8, 150)
#' moving_to_canada(5, 32, 16, 45, digits = 1)
#'
#' @export
moving_to_canada <- function(distance_to_school_mi, temp_F, recipe_oz, gym_weight_lbs, digits = 2) {

  # Ensuring distance_to_school input is numeric and positive. Not allowing 'NA' values to be passed. Returning an error message if any of these conditions are met.
    if (!is.numeric(distance_to_school_mi) || any(distance_to_school_mi < 0, na.rm = TRUE)) {
    stop("Distance to school must be a positive numeric input in miles")
  }

  # Ensuring temp_F is a numeric input. Not allowing 'NA' value to be passed. Returning an error message if conditions are not met.
    if (!is.numeric(temp_F)) {
    stop("Temperature must be reported as a numeric input in Fahrenheit")
  }

  # Ensuring recipe_oz input is numeric and positive. Not allowing 'NA' values to be passed. Returning an error message if any of these conditions are met.
  if (!is.numeric(recipe_oz) || any(recipe_oz < 0, na.rm = TRUE)) {
    stop("The recipe amount input must be a positive numeric input in ounces")
  }

  # Ensuring gym_weight_lbs input is numeric and positive. Not allowing 'NA' values to be passed. Returning an error message if any of these conditions are met.
  if (!is.numeric(gym_weight_lbs) || any(gym_weight_lbs < 0, na.rm = TRUE)) {
    stop("The weight must be a positive numeric input in pounds")
  }

  # Converting from miles to kilometers
  distance_to_school_km <- distance_to_school_mi * 1.609

  # Converting from degrees Farenheit to degress Celsius
  temp_C <- (temp_F - 32) * (5 / 9)

  # Converting from ounces to milliliters
  recipe_ml <- recipe_oz * 29.574

  # Converting from pounds to kilograms
  gym_weight_kg <- gym_weight_lbs / 2.205

  # Turning the values into a tibble to compare input and output values with units
  final_conversions <- tibble::tibble(
    variable = c("Distance", "Temperature", "Volume", "Weight"),
    input = c(distance_to_school_mi, temp_F, recipe_oz, gym_weight_lbs),
    in_unit = c("mi", "F", "oz", "lbs"),

    # Rounding each output unit to 2 digits unless otherwise specified in the function inputs
    output = round(c(distance_to_school_km, temp_C, recipe_ml, gym_weight_kg), digits),
    out_unit = c("km", "C", "mL", "kg")
  )

  # Returning the final conversions tibble
  return(final_conversions)
}
