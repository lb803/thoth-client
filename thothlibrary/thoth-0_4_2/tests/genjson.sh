#!/bin/bash

# this script will generate the stored fixtures for the test suite
# it should only be run when the program is generating the correct output
# running this when the code produces bad output will yield the test suite
# inoperative/inaccurate.

# when updating this script, find and replace:
# 0.4.2 -> new version
# 0_4_2 -> new version with underscores

cd ../../../

bash -c "python3 -m thothlibrary.cli contributions --version=0.4.2 --limit=2 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/contributions.json"
bash -c "python3 -m thothlibrary.cli works --version=0.4.2 --limit=2 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/works.json"
bash -c "python3 -m thothlibrary.cli publications --version=0.4.2 --limit=2 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/publications.json"
bash -c "python3 -m thothlibrary.cli publishers --version=0.4.2 --limit=4 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/publishers.json"
bash -c "python3 -m thothlibrary.cli publisher --version=0.4.2 --publisher_id=85fd969a-a16c-480b-b641-cb9adf979c3b --raw > thothlibrary/thoth-0_4_2/tests/fixtures/publisher.json"
bash -c "python3 -m thothlibrary.cli work --version=0.4.2 --work_id=e0f748b2-984f-45cc-8b9e-13989c31dda4 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/work.json"
bash -c "python3 -m thothlibrary.cli work --version=0.4.2 --doi=https://doi.org/10.21983/P3.0314.1.00 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/workByDoi.json"
bash -c "python3 -m thothlibrary.cli publication --version=0.4.2 --publication_id=34712b75-dcdd-408b-8d0c-cf29a35be2e5 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/publication.json"
bash -c "python3 -m thothlibrary.cli imprints --version=0.4.2 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/imprints.json"
bash -c "python3 -m thothlibrary.cli imprint --version=0.4.2 --imprint_id=78b0a283-9be3-4fed-a811-a7d4b9df7b25 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/imprint.json"
bash -c "python3 -m thothlibrary.cli contributors --version=0.4.2 --limit=4 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/contributors.json"
bash -c "python3 -m thothlibrary.cli contributor --version=0.4.2 --contributor_id=e8def8cf-0dfe-4da9-b7fa-f77e7aec7524 --raw > thothlibrary/thoth-0_4_2/tests/fixtures/contributor.json"


bash -c "echo '{\"data\": {\"contributions\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/contributions_bad.json"
bash -c "echo '{\"data\": {\"works\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/works_bad.json"
bash -c "echo '{\"data\": {\"publications\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/publications_bad.json"
bash -c "echo '{\"data\": {\"publishers\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/publishers_bad.json"
bash -c "echo '{\"data\": {\"publisher\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/publisher_bad.json"
bash -c "echo '{\"data\": {\"work\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/work_bad.json"
bash -c "echo '{\"data\": {\"workByDoi\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/workByDoi_bad.json"
bash -c "echo '{\"data\": {\"publication\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/publication_bad.json"
bash -c "echo '{\"data\": {\"imprints\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/imprints_bad.json"
bash -c "echo '{\"data\": {\"imprint\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/imprint_bad.json"
bash -c "echo '{\"data\": {\"contributors\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/contributors_bad.json"
bash -c "echo '{\"data\": {\"contributor\": [\"1\"] } }'  > thothlibrary/thoth-0_4_2/tests/fixtures/contributor_bad.json"