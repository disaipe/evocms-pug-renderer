/**
 * Pug Renderer
 *
 * Simple renderer, used to compile pug templates to HTML output
 *
 * @category	plugin
 * @version		0.1
 * @internal	@properties
 * @internal	@events OnWebPagePrerender
 * @internal	@disabled 1
 * 
 * @author		https://github.com/disaipe
 */

/**
 * Install package `pug-php/pug` with composer before enable plugin
 * ~ composer require pug-php/pug
 */
require_once 'vendor/autoload.php';
$pug = new Pug();
$content = &$modx->documentOutput;
$content = $pug->render($content, []);