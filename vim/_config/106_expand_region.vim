if empty(globpath(&rtp, 'autoload/expand_region.vim'))
  finish
endif

vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

