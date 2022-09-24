#!/usr/bin/env bash
set -euo pipefail
cd common && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd core && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd features && python3 setup.py clean bdist_wheel && cd ..
cd tabular && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd multimodal && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd text && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd vision && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd timeseries && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..
cd autogluon && rm -rf build/ && python3 setup.py clean bdist_wheel && cd ..

DIST_DST=/Users/yizhiliu/Workspace/autogluon_top/packaging_tutorial/dist/autogluon
cp -f autogluon/dist/*.whl $DIST_DST/autogluon/
cp -f common/dist/*.whl $DIST_DST/common/
cp -f core/dist/*.whl $DIST_DST/core/
cp -f features/dist/*.whl $DIST_DST/features/
cp -f tabular/dist/*.whl $DIST_DST/tabular/
cp -f multimodal/dist/* $DIST_DST/multimodal/
cp -f text/dist/* $DIST_DST/text/
cp -f vision/dist/* $DIST_DST/vision/
cp -f timeseries/dist/* $DIST_DST/timeseries/
