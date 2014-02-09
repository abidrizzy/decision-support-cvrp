#include "SA.h"
#include "CWS.h"
#include "CVRP.h"
#include "Evolutionary.h"
#include "argvparser.h"

using namespace std;
using namespace CommandLineProcessing;

ArgvParser * CreateArgvParser() {

    ArgvParser * cmds = new ArgvParser();

    /*cmds->setIntroductoryDescription("Clarke Wright Savings (CWS) algorithm "\
            "implementation for the CVRP by adamiaonr@gmail.com");*/
    cmds->setIntroductoryDescription("Capacitated Vehicle Routing Problem "\
            "(CVRP) algorithms, implementations by adamiaonr@gmail.com");

    cmds->setHelpOption("h", "help", "Here's the help page.");

    cmds->defineOption(
            "dataset",
            "CVRP dataset to be fed to the algorithms. Should be in the same "\
                "format as in "\
                "http://www.coin-or.org/SYMPHONY/branchandcut/VRP/index.htm.\n"\
            "e.g. --dataset=instances/A-n32-k5.vrp",
            ArgvParser::OptionRequiresValue);

    cmds->defineOption(
            "cws_version",
            "Version of the CWS algorithm to run (parallel or sequential).\n"\
            "e.g. for the parallel version use --cws_version=p\n"
            "Use 'p' for running the parallel version, 's' for running the "\
                "sequential version.",
            ArgvParser::OptionRequiresValue);

    cmds->defineOption(
            "sa",
            "Apply a Simulated Annealing (SA) run on the solution provided "\
                    "by the CWS algorithm.",
            ArgvParser::NoOptionAttribute);

    cmds->defineOption(
            "ga",
            "Run a Genetic Algorithm (GA) over a population generated after "\
                    "the results given by the CWS algorithm.",
            ArgvParser::NoOptionAttribute);

    /*cmds->defineOptionAlternative("dataset", "d");
    cmds->defineOptionAlternative("version", "v");*/

    return cmds;
}

int main (int argc, char **argv) {

    // Initialize random number generator (required for Simulated Annealing 
    // (SA)).
    srand(time(NULL));

    ArgvParser * cmds = CreateArgvParser();

    char * dataset = NULL;
    char * cws_version = NULL;
    CWS::Version _cws_version;

    int result = cmds->parse(argc, argv);

    if (result != ArgvParser::NoParserError) {

        fprintf(stderr, "%s\n", cmds->parseErrorDescription(result).c_str());

        if (result != ArgvParser::ParserHelpRequested) {
            fprintf(stderr, "Use the option -h for help.\n");
        }

        return -1;

    } else {

        if (cmds->foundOption("dataset")) {

            dataset = (char *) cmds->optionValue("dataset").c_str();

        } else {

            fprintf(stderr, "No dataset file specified. Use the option -h for help.\n");

            return -1;
        }

        if (cmds->foundOption("cws_version")) {

            cws_version = (char *) cmds->optionValue("cws_version").c_str();

            if (strcmp(cws_version, PARALLEL_VERSION) == 0) {

                _cws_version = CWS::PARALLEL;

            } else if (strcmp(cws_version, SEQUENTIAL_VERSION) == 0) {

                _cws_version = CWS::SEQUENTIAL;

            } else {

                fprintf(stderr, "Unrecognized CWS version option. Use the "\
                        "option -h for help.\n");

                return -1;
            }
        }
    }

    // Stop it from going ahead if the help flag was the one given as 
    // input.
    if (result == ArgvParser::ParserHelpRequested) {

        return -1;
    }

    // Create an instance of a CVRP graph and fill with the info on the dataset 
    // file.
    CVRP * graph = new CVRP(std::string(dataset));

    // Run the _cws_version of the CWS algorithm.
    CWS::Run(graph, _cws_version);

    // Run the Simulated Annealing (SA) algorithm over the CWS solution.
    //SA::Run(graph, 0.005, 300.0, 50000, 300, SA::PHASE_2);

    // Run the Genetic Algorithm (GA) implementation.
    CVRP * graph_1 = new CVRP(std::string(dataset));
    CVRP * graph_2 = new CVRP(std::string(dataset));
    CVRP * graph_3 = new CVRP(std::string(dataset));

    CWS::Run(graph_1, CWS::SEQUENTIAL);
    CWS::Run(graph_2, CWS::SEQUENTIAL);
    CWS::Run(graph_3, CWS::SEQUENTIAL);
    //SA::Run(graph_3, 0.05, 300.0, 25000, 300, SA::PHASE_2);

    Evolutionary::Run(
        graph_1, 
        graph_2, 
        graph_3,
        100000,
        120,
        0.75);

    return 1;
}
