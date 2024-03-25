All custom svg icons should go here. they can be called with:
    <apto-svg [name]="'home'" [styles]="{fill: 'orange', width: '50px'}"></apto-svg>

where 'name' must be the custom icon name in this folder without the '.svg' suffix.

if we want to load icons from other folder like media folder then we can specify also the 'path' argument:

    <apto-svg [name]="'cloud'" [styles]="{fill: 'orange', width: '50px'}" [path]="'icons/svg'"></apto-svg>
