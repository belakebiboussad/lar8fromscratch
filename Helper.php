<?php 

namespace App\Helpers;
use Carbon\Carbon;

class Helper{
	public static function cleanString($stext){
		  $utf8 = array(
        '/[áàâãªä]/u'   =>   'a',
        '/[ÁÀÂÃÄ]/u'    =>   'A',
        '/[ÍÌÎÏ]/u'     =>   'I',
        '/[íìîï]/u'     =>   'i',
        '/[éèêë]/u'     =>   'e',
        '/[ÉÈÊË]/u'     =>   'E',
        '/[óòôõºö]/u'   =>   'o',
        '/[ÓÒÔÕÖ]/u'    =>   'O',
        '/[úùûü]/u'     =>   'u',
        '/[ÚÙÛÜ]/u'     =>   'U',
        '/ç/'           =>   'c',
        '/Ç/'           =>   'C',
        '/ñ/'           =>   'n',
        '/Ñ/'           =>   'N',
        '/–/'           =>   '-', // UTF-8 hyphen to "normal" hyphen
        '/[’‘‹›‚]/u'    =>   ' ', // Literally a single quote
        '/[“”«»„]/u'    =>   ' ', // Double quote
        '/ /'           =>   '-', // nonbreaking space (equiv. to 0x160)
    );
    return preg_replace(array_keys($utf8), array_values($utf8), $stext);
	}

    /**
     *Get the roles to use from the configured roles provider
     *
     * @return array
     */
    public static function getConfiguredRoles() : array
    {
        if (empty(config('formbuilder.roles_provider'))) return [];

        try {
            $provider = config('formbuilder.roles_provider');
            return  (new $provider)();
        } catch (Throwable $e) {
            info($e);

            return [];
        }
    }

    /**
     * Add random string to the url to help bust the cache in development
     * @return string
     */
    public static function bustCache() : string
    {
        if (! config('app.debug')) return '';
        return '?b=' . static::randomString();
    }
    /**
     * Generate and return a random characters string
     *
     * @link https://gist.github.com/irazasyed/5382685
     * @param   integer $length  Length of the string to be generated, Default: 8 characters long.
     * @param   string  $seedings the characters to use for the random string seeding
     * @return  string
     */
    public static function randomString($length = 8, $seedings = null) : string
    {
        $seedings = $seedings ?? '123456789ABCDEFGHJKLM';
        $pool = $seedings;
        $str = '';
        for ($i = 0; $i < $length; $i++)
        {
            $str .= substr($pool, mt_rand(0, strlen($pool) -1), 1);
        }
        return $str;
    }
    /**
     * Return a generic error message
     *
     * @return string
     */
    public static function wtf() : string
    {
        return 'Une erreur s\'est produite lors du traitement de votre demande.';
    }
    public static function formatStat($etat)
    {
        return '<span class="badge badge-'.(($etat ==="En cours") ? 'primary':'warning').'">'.$etat.'</span>';
    }
    public static function isInprog($stat)
    {
        return ($stat->getEtatID() ==='')? '':' hidden';
    }

    /**
     * @param Carbon $date
     * @param $format
     * @return string
     * en specifie le format en parametrer
     */
    public static function formatDate(Carbon $date,$format)
    {
        return $date->format($format);//'d/m/Y'
    }
    public static function formatDateF(Carbon $date)
    {
        return $date->format('d/m/Y');
    }
    public static function formatString($collection, $field1, $field2)
    {
        $str= "";
        foreach( $collection as $obj)
        {
            $str.= $obj->$field1 . ':' . $obj->$field2 . ";";
        }
        return $str;
    }
}