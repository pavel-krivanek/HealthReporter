# HealthReporter [![Build Status](https://travis-ci.org/pavel-krivanek/HealthReporter.svg?branch=master)](https://travis-ci.org/pavel-krivanek/HealthReporter)
The HealthReporter is a simple tool to export information about a Ring environment in the STON format and then to compare them and provide a readable report.

### How to load

```
Metacello new
  baseline: 'HealthReporter';
  repository: 'github://pavel-krivanek/HealthReporter/src';
  load.
```