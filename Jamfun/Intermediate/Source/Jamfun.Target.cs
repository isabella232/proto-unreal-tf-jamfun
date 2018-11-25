using UnrealBuildTool;

public class JamfunTarget : TargetRules
{
	public JamfunTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		ExtraModuleNames.Add("Jamfun");
	}
}
