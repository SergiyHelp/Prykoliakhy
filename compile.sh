#!/bin/sh

ACCENTS='#fb4934
#b8bb26
#fabd2f
#458588
#83a598
#d3869b
#8ec07c
#fe8019'

for cycle in src/*
do
	export CYCLE_NAME=`basename "$cycle"`
	export CYCLE_ID=`./ukr-lat <<< "$CYCLE_NAME"`

	unset ARTICLES
	declare -a files=(src/"$CYCLE_NAME"/*)
	for (( i = 0; i < ${#files[*]}; ++ i ))
	do
		article=${files[$i]}

		export TITLE=`head -n 1 "$article"`
		export ACCENT=`shuf -n 1 <<< "$ACCENTS"`
		export ARTICLE_NAME="$TITLE"
		export ARTICLE_LINK=`./ukr-lat <<< "$TITLE"`.html

		if [ $i -gt 0 ]
		then
			export LINK=`head -n 1 "${files[$i-1]}" | ./ukr-lat`.html
			export PREV_ARTICLE=`envsubst < templates/previous-entry.html`
		else
			unset PREV_ARTICLE
		fi

		next_file=${files[$i+1]}
		if [ ! -z "$next_file" ]
		then
			export LINK=`head -n 1 "$next_file" | ./ukr-lat`.html
			export NEXT_ARTICLE=`envsubst < templates/next-entry.html`
		else
			unset NEXT_ARTICLE
		fi

		export CONTENT="
		`pandoc "$article" | ./hl.sed`
		`envsubst < templates/article-base.html`"

		envsubst < templates/base.html > "$ARTICLE_LINK"

		export ARTICLES="$ARTICLES `envsubst < templates/article-entry.html`"
	done

	export CYCLES="$CYCLES `envsubst < templates/cycle-entry.html`"
done

export TITLE='ПРИКОЛЯХИ'
export ACCENT='#fb4934'

export CONTENT=`envsubst < templates/index-base.html`
envsubst < templates/base.html > index.html
