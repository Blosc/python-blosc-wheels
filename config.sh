# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
python - <<-EOF
import sys, blosc
try:
    blosc.test()
except:
    sys.exit(1)
else:
    sys.exit(0)
EOF
}
