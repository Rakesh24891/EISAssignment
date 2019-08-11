<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DublinBikes.co</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
    body {
        background-color: rgb(105, 155, 179);
        background-image: url("bike.jpg");
        background-size: 100% 50%;
    }
</style>

<body>


    <div class="w3-bar w3-black">
        <a href="#" class="w3-bar-item w3-button">Home</a>
        <a href="#" class="w3-bar-item w3-button">Stations</a>
        <a href="#" class="w3-bar-item w3-button">Bike stands</a>
    </div>

    <div class="w3-container w3-text-white ">
        <h2>Dublin Bikes</h2>
        <p>Wanna get there? Hop on a dublin bike!!</p>
    </div>
    <!-- Page content -->
    <div class="w3-content" style="max-width:2000px;margin-top:46px">


        <div class="w3-container  w3-text-white w3-padding-32 w3-hide-small w3-content w3-center w3-padding-64"
            style="max-width:800px" id="station">
            <h2 class="w3-wide">STATION LIST</h2>
            <p class="w3-text-white"></p><i>Hop on, keep moving!</i></p>

          
            <form action="/RedirectWebApp/registerSuccess" method="post">
                <table> 
                        
                    <tr>
                        <td>STATION LIST</td>
                        <td><select name="station">
                                <option value="AVONDALE ROAD">AVONDALE ROAD </option>
                                <option value="BENSON STREET">BENSON STREET </option>
                                <option value="BLACKHALL PLACE ">BLACKHALL PLACE </option>
                                <option value="BLESSINGTON STREET">BLESSINGTON STREET </option>
                                <option value="BOLTON STREET">BOLTON STREET </option>
                                <option value="BROOKFIELD ROAD">BROOKFIELD ROAD </option>
                                <option value="BUCKINGHAM STREET LOWER">BUCKINGHAM STREET LOWER </option>
                                <option value="CATHAL BRUGHA STREET">CATHAL BRUGHA STREET </option>
                                <option value="CHARLEMONT PLACE">CHARLEMONT PLACE </option>
                                <option value="CHARLEVILLE ROAD">CHARLEVILLE ROAD </option>
                                <option value="CHRISTCHURCH PLACE">CHRISTCHURCH PLACE </option>
                                <option value="CITY QUAY">CITY QUAY </option>
                                <option value="CLONMEL STREET">CLONMEL STREET </option>
                                <option value="COLLINS BARRACKS MUSEUM">COLLINS BARRACKS MUSEUM </option>
                                <option value="CONVENTION CENTRE">CONVENTION CENTRE </option>
                                <option value="CUSTOM HOUSE">CUSTOM HOUSE </option>
                                <option value="CUSTOM HOUSE QUAY">CUSTOM HOUSE QUAY </option>
                                <option value="DAME STREET">DAME STREET </option>
                                <option value="DENMARK STREET GREAT">DENMARK STREET GREAT </option>
                                <option value="DEVERELL PLACE">DEVERELL PLACE </option>
                                <option value="EARLSFORT TERRACE">EARLSFORT TERRACE </option>
                                <option value="ECCLES STREET ">ECCLES STREET </option>
                                <option value="ECCLES STREET EAST">ECCLES STREET EAST </option>
                                <option value="EMMET ROAD">EMMET ROAD </option>
                                <option value="EXCHEQUER STREET">EXCHEQUER STREET </option>
                                <option value="EXCISE WALK">EXCISE WALK </option>
                                <option value="FENIAN STREET">FENIAN STREET </option>
                                <option value="FITZWILLIAM SQUARE EAST">FITZWILLIAM SQUARE EAST </option>
                                <option value="FITZWILLIAM SQUARE WEST">FITZWILLIAM SQUARE WEST </option>
                                <option value="FOWNES STREET UPPER">FOWNES STREET UPPER </option>
                                <option value="FRANCIS STREET">FRANCIS STREET </option>
                                <option value="FREDERICK STREET SOUTH">FREDERICK STREET SOUTH </option>
                                <option value="GEORGES LANE">GEORGES LANE </option>
                                <option value="GEORGES QUAY">GEORGES QUAY </option>
                                <!-- <option value="volvo">GOLDEN LANE                      </option>
<option value="volvo">GRAND CANAL DOCK                 </option>
<option value="volvo">GRANGEGORMAN LOWER (CENTRAL)     </option>
<option value="volvo">GRANGEGORMAN LOWER (NORTH)       </option>
<option value="volvo">GRANGEGORMAN LOWER (SOUTH)       </option>
<option value="volvo">GRANTHAM STREET                  </option>
<option value="volvo">GRATTAN STREET                   </option>
<option value="volvo">GREEK STREET                     </option>
<option value="volvo">GUILD STREET                     </option>
<option value="volvo">HANOVER QUAY                     </option>
<option value="volvo">HARCOURT TERRACE                 </option>
<option value="volvo">HARDWICKE PLACE                  </option>
<option value="volvo">HARDWICKE STREET                 </option>
<option value="volvo">HATCH STREET                     </option>
<option value="volvo">HERBERT PLACE                    </option>
<option value="volvo">HERBERT STREET                   </option>
<option value="volvo">HEUSTON BRIDGE (NORTH)           </option>
<option value="volvo">HEUSTON BRIDGE (SOUTH)           </option>
<option value="volvo">HEUSTON STATION (CAR PARK)       </option>
<option value="volvo">HEUSTON STATION (CENTRAL)        </option>
<option value="volvo">HIGH STREET                      </option>
<option value="volvo">JAMES STREET                     </option>
<option value="volvo">JERVIS STREET                    </option>
<option value="volvo">JOHN STREET WEST                 </option>
<option value="volvo">KEVIN STREET                     </option>
<option value="volvo">KILLARNEY STREET                 </option>
<option value="volvo">KILMAINHAM GAOL                  </option>
<option value="volvo">KILMAINHAM LANE                  </option>
<option value="volvo">KING STREET NORTH                </option>
<option value="volvo">LEINSTER STREET SOUTH            </option>
<option value="volvo">LIME STREET                      </option>
<option value="volvo">MARKET STREET SOUTH              </option>
<option value="volvo">MATER HOSPITAL                   </option>
<option value="volvo">MERRION SQUARE EAST              </option>
<option value="volvo">MERRION SQUARE SOUTH             </option>
<option value="volvo">MERRION SQUARE WEST              </option>
<option value="volvo">MOLESWORTH STREET                </option>
<option value="volvo">MOUNT BROWN                      </option>
<option value="volvo">MOUNT STREET LOWER               </option>
<option value="volvo">MOUNTJOY SQUARE EAST             </option>
<option value="volvo">MOUNTJOY SQUARE WEST             </option>
<option value="volvo">NEW CENTRAL BANK                 </option>
<option value="volvo">NEWMAN HOUSE                     </option>
<option value="volvo">NORTH CIRCULAR ROAD              </option>
<option value="volvo">NORTH CIRCULAR ROAD (O'CONNELL'S)</option>
<option value="volvo">OLIVER BOND STREET               </option>
<option value="volvo">ORMOND QUAY UPPER                </option>
<option value="volvo">PARKGATE STREET                  </option> -->
                                <option value="PARNELL SQUARE NORTH">PARNELL SQUARE NORTH </option>
                                <option value="PARNELL STREET">PARNELL STREET </option>
                                <option value="PEARSE STREET">PEARSE STREET </option>
                                <option value="HIBSBOROUGH ROAD">PHIBSBOROUGH ROAD </option>
                                <option value="PORTOBELLO HARBOUR">PORTOBELLO HARBOUR </option>
                                <option value="PORTOBELLO ROAD">PORTOBELLO ROAD </option>
                                <option value="PRINCES STREET / O'CONNELL STREET">PRINCES STREET / O'CONNELL STREET
                                </option>
                                <option value="volvo">RATHDOWN ROAD </option>
                                <option value="ROTHE ABBEY">ROTHE ABBEY </option>
                                <option value="ROYAL HOSPITAL">ROYAL HOSPITAL </option>
                                <option value="SANDWITH STREET">SANDWITH STREET </option>
                                <option value="SIR PATRICK DUN'S">SIR PATRICK DUN'S </option>
                                <option value="SMITHFIELD ">SMITHFIELD </option>
                                <option value="SMITHFIELD NORTH  ">SMITHFIELD NORTH </option>
                                <option value="SOUTH DOCK ROAD">SOUTH DOCK ROAD </option>
                                <option value="ST JAMES HOSPITAL (LUAS) ">ST JAMES HOSPITAL (LUAS) </option>
                                <option value="ST. JAMES HOSPITAL (CENTRAL)">ST. JAMES HOSPITAL (CENTRAL) </option>
                                <option value="ST. STEPHEN'S GREEN EAST">ST. STEPHEN'S GREEN EAST </option>
                                <option value="ST. STEPHEN'S GREEN SOUTH ">ST. STEPHEN'S GREEN SOUTH </option>
                                <option value="TALBOT STREET">TALBOT STREET </option>
                                <option value="THE POINT">THE POINT </option>
                                <option value="TOWNSEND STREET">TOWNSEND STREET </option>
                                <option value="UPPER SHERRARD STREET">UPPER SHERRARD STREET </option>
                                <option value="WESTERN WAY">WESTERN WAY </option>
                                <option value="WILTON TERRACE">WILTON TERRACE </option>
                                <option value="WILTON TERRACE (PARK) ">WILTON TERRACE (PARK) </option>
                                <option value="WOLFE TONE STREET ">WOLFE TONE STREET </option>
                                <option value="YORK STREET EAST">YORK STREET EAST </option>
                                <option value="YORK STREET WEST">YORK STREET WEST</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="Register"></td>
                    </tr>
            



                </table>
            </form>
            
        </div>
    </div>




    <!-- Footer-->
    <footer class="w3-container w3-text-white w3-padding-64 w3-center w3-opacity  w3-xlarge">
        <p class="w3-medium"> <a> Powered by DublinBikes.co </a></p>
    </footer>

    <!-- Image of bike stations -->
    <img src="bike station spots.png" class="w3-image w3-greyscale-min" style="width:100%">

</body>

</html>