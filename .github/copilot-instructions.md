<!-- Use this file to provide workspace-specific custom instructions to Copilot. For more details, visit https://code.visualstudio.com/docs/copilot/copilot-customization#_use-a-githubcopilotinstructionsmd-file -->

This gem monkey patches ActiveRecord's find_in_batches to call GC.start on each batch. Models opt-in by prepending the FindEachGC module.
