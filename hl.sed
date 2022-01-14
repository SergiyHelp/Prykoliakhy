#!/bin/sed -Ef

/<pre>/,/<\/pre>/s|\bauto\b|<span class='w'>auto<\/span>|g
/<pre>/,/<\/pre>/s|\bbreak\b|<span class='w'>break<\/span>|g
/<pre>/,/<\/pre>/s|\bcase\b|<span class='w'>case<\/span>|g
/<pre>/,/<\/pre>/s|\bchar\b|<span class='w'>char<\/span>|g
/<pre>/,/<\/pre>/s|\bconst\b|<span class='w'>const<\/span>|g
/<pre>/,/<\/pre>/s|\bcontinue\b|<span class='w'>continue<\/span>|g
/<pre>/,/<\/pre>/s|\bdefault\b|<span class='w'>default<\/span>|g
/<pre>/,/<\/pre>/s|\bdo\b|<span class='w'>do<\/span>|g
/<pre>/,/<\/pre>/s|\bdouble\b|<span class='w'>double<\/span>|g
/<pre>/,/<\/pre>/s|\belse\b|<span class='w'>else<\/span>|g
/<pre>/,/<\/pre>/s|\benum\b|<span class='w'>enum<\/span>|g
/<pre>/,/<\/pre>/s|\bextern\b|<span class='w'>extern<\/span>|g
/<pre>/,/<\/pre>/s|\bfloat\b|<span class='w'>float<\/span>|g
/<pre>/,/<\/pre>/s|\bfor\b|<span class='w'>for<\/span>|g
/<pre>/,/<\/pre>/s|\bgoto\b|<span class='w'>goto<\/span>|g
/<pre>/,/<\/pre>/s|\bif\b|<span class='w'>if<\/span>|g
/<pre>/,/<\/pre>/s|\bint\b|<span class='w'>int<\/span>|g
/<pre>/,/<\/pre>/s|\blong\b|<span class='w'>long<\/span>|g
/<pre>/,/<\/pre>/s|\bregister\b|<span class='w'>register<\/span>|g
/<pre>/,/<\/pre>/s|\breturn\b|<span class='w'>return<\/span>|g
/<pre>/,/<\/pre>/s|\bshort\b|<span class='w'>short<\/span>|g
/<pre>/,/<\/pre>/s|\bsigned\b|<span class='w'>signed<\/span>|g
/<pre>/,/<\/pre>/s|\bsizeof\b|<span class='w'>sizeof<\/span>|g
/<pre>/,/<\/pre>/s|\bstatic\b|<span class='w'>static<\/span>|g
/<pre>/,/<\/pre>/s|\bstruct\b|<span class='w'>struct<\/span>|g
/<pre>/,/<\/pre>/s|\bswitch\b|<span class='w'>switch<\/span>|g
/<pre>/,/<\/pre>/s|\btypedef\b|<span class='w'>typedef<\/span>|g
/<pre>/,/<\/pre>/s|\bunion\b|<span class='w'>union<\/span>|g
/<pre>/,/<\/pre>/s|\bunsigned\b|<span class='w'>unsigned<\/span>|g
/<pre>/,/<\/pre>/s|\bvoid\b|<span class='w'>void<\/span>|g
/<pre>/,/<\/pre>/s|\bvolatile\b|<span class='w'>volatile<\/span>|g
/<pre>/,/<\/pre>/s|\bwhile\b|<span class='w'>while<\/span>|g

/<pre>/,/<\/pre>/s|\/\*|<span class='c'>\/\*|g
/<pre>/,/<\/pre>/s|\*\/|\*\/<\/span>|g
