:- prolog_load_context(directory, Dir),
   file_directory_name(Dir, Lib),
   (   user:file_search_path(library, Lib)
   ->  true
   ;   asserta(user:file_search_path(library, Lib))
   ).

:- use_module(owl2_model).
:- use_module(owl2_from_rdf).
:- use_module(owl2_export_rdf).
:- use_module(owl2_xml).
:- use_module(owl2_util).
:- use_module(owl2_io).

