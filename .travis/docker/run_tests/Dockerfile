FROM dunecommunitylocal/gdt-testing_base_clang

ARG tests
ENV TESTS ${tests}

RUN ${DUNE_VENV_ACTIVATE} && \
    ${SRC_DCTRL} ${BLD} --only=${MY_MODULE} make test_binaries_builder_${TESTS}
RUN echo '${DUNE_VENV_ACTIVATE}\n ${SRC_DCTRL} ${BLD} --only=${MY_MODULE} bexec ctest -V -L ^builder_${TESTS}$' > /usr/local/bin/run_tests.bash

WORKDIR ${SUPERDIR}
CMD ["bash", "/usr/local/bin/run_tests.bash"]
