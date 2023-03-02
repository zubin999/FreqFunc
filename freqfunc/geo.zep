namespace FreqFunc;

class Geo
{
    const PI = 3.14159265;

    const RADIUS = 6378.1370;

    public static function getDest(float lng1, float lat1, float lng2, float lat2, boolean km = false)
    {
        let lat1 = lat1 * Geo::PI / 180.0;
	let lng1 = lng1 * Geo::PI / 180.0;

	let lat2 = lat2 * Geo::PI / 180.0;
	let lng2 = lat2 * Geo::PI / 180.0;

return 2 * asin(sqrt(pow(sin((lat1 - lat2) / 2), 2) + cos(lat1) * cos(lat2) * pow(sin((lng1 - lng2) / 2), 2))) * Geo::RADIUS;
    }
}
