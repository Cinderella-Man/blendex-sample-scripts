# Blendex Sample Scripts

In each directory of this repository, you can see an example of CLI scripts(projects) that showcases different features of Blendex API(and Blender API).


## How to set it up

1. Create a new directory for sandbox setup

```
mkdir blendex_playground
```

2. Inside that new directory clone two projects:

```
git clone git@github.com:Cinderella-Man/blendex.git
git clone git@github.com:Cinderella-Man/blendex-sample-scripts.git
```

We need to clone `blendex` for the time-being as it's not yet published to the `hex`.

3. Open Blender as usual and click on the "Scripting" tab. Click on "+ New" and paste the contents of the `blender_filesync_script.py` file from this repository(remember to update the `filename` variable to match the *absolute* path to the `output.py` file in the experiment that you would like to run). Click on a "play" button inside Blender(on the right of the "Text"/"+ New" button).

The "play" button will change back to grey color(as the script would stop working) - this is expected, the script sets the callback function that will be called every x seconds. It sets it up and correctly ends, but the callback is getting called behind the scenes until Blender is closed.

4. Go to the experiment of interest and run it:

```
cd blendex-sample-scripts/solar-system
mix run lib/solar_system.ex
```

This will cause the `output.py` file to be updated for that experiment, and as long as the script inside Blender(the `filename` variable mentioned in step 3), this should almost real-time be generated inside Blender.