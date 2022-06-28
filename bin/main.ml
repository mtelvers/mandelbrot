
open Graphics
open Complex

let () = open_graph " 1000x1000"

let area_min = { re = -0.56; im = -0.56 }
let area_max = { re = -0.55; im = -0.55 }

let rec iterate z c i =
  if i = 256 || norm2 z > 4.0
  then i
  else iterate { re = z.re *. z.re -. z.im *. z.im +. c.re; im = 2.0 *. z.re *. z.im +. c.im } c (i + 1)

let initial_c a b =
        { re = area_min.re +. (area_max.re -. area_min.re) *. (float_of_int a) /. (float_of_int 999);
          im = area_min.im +. (area_max.im -. area_min.im) *. (float_of_int b) /. (float_of_int 999) }

let () = for y = 0 to 999 do
  for x = 0 to 999 do begin
    let it = iterate zero ( initial_c x y ) 0 in
      if it = 256 then
      set_color 0 else
      set_color (rgb it it it);
      plot x y
  end
  done
done

let x = read_line ()
