baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec 
			baseline: 'Ring2' with: [
				spec repository: 'github://pavel-krivanek/Ring2:healthReporter' ].
		spec 
			package: 'HealthReporter-Core'	
				with: [ spec requires: #(#'Ring2' ). ];
			package: 'HealthReporter-Tests'.

		spec group: 'core' with: #('HealthReporter-Core').
		spec group: 'tests' with: #('HealthReporter-Tests').
		spec group: 'all' with: #('core' 'tests').
		spec group: 'default' with: #('all').
	].		
