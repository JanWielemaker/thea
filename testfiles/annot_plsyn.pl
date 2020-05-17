% testing general (entity) annotations

% load the thea modules
:- use_module(library(thea2/owl2_io)).
:- use_module(library(thea2/owl2_model)).
:- use_module(library(thea2/owl2_util)).

% load the plsyn ontology example that contains entity annotations...
:- load_axioms('annot1.plsyn',plsyn).

% ... and translate to owl format to check annotations are correct
:- save_axioms('annot1.ttl',ttl).
