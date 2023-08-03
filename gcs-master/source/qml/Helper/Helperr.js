function codToMeter(latitude,longitude,p_latitude,p_longitude,count)
{

    if(count >0){
        var A=(latitude - p_latitude)*(3.1415/180)*6378000    //meters
        var B=(longitude - p_longitude)*(3.1415/180)*6378000
        var  dis = Math.sqrt(A*A+B*B)
        p_latitude = latitude
        p_longitude = longitude


        return dis
    }
    else return 0
}
