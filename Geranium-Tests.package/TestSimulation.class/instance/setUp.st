initialization
setUp

	self fullInternalApiScript.
	"min/max for non-hoping categories"

	report := GeraniumSimulation new
			for: #ScenarioA;
			run.