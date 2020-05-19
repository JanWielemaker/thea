% testing prefix declarations

% load the thea modules
:- use_module(library(thea2/owl2_io)).
:- use_module(library(thea2/owl2_model)).
:- use_module(library(thea2/owl2_util)).

% load and translate the plsyn ontology example that contains preferences.
:- load_axioms('prefix_test1.plsyn',plsyn), save_axioms('prefix_test1.ttl',ttl).

% reset, load and save the translation to check against original
:- retract_all_axioms, load_axioms('prefix_test1.ttl',ttl), contract_namespaces, save_axioms('prefix_test2.plsyn',plsyn).

% reset, load and save again to check round trip on ttl
:- retract_all_axioms, load_axioms('prefix_test2.plsyn',plsyn), save_axioms('prefix_test3.ttl',ttl).

