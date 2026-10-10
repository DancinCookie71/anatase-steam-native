# Custom Image Template
Make your own custom Anatase image! Anatase is designed to be lean and unopinionated, while not needing extension for normal use. But you might want to mess with the image to add your own tools, or toy around.

Anatase is a normal container image you can download from `i.anatase.org/anatase:stable` and then add your own packages. It is based on the latest version of Fedora, so anything you would install or modify on a fedora container you can do here. In this repository, you can find a template containerfile for building your own image.

## Using the template
To use this template, clone this repository:
```bash
git clone https://github.org/anatase-org/template my-anatase
cd my-anatase
```

Then, customize `Containerfile` to your liking. When done, if on an Anatase system, you can run `./update.sh` from the terminal to update to that image and run it again periodically to access the latest versions.

### On Github actions
A [build.yml](./.github/workflows/build.yml) Github workflow is provided that allows you to go to your fork,
select `Actions > Build Custom Image > Run Workflow`. This will build the
image and upload it under `ghcr.io/<your-username>/my-anatase`.

Then, you can switch to it with:
```bash
sudo bootc switch ghcr.io/<my-username>/my-anatase
```

Afterwards, the automatic updater will pick it up and handle updates for you,
or you can manually do `sudo bootc update`.

You can edit [build.yml](./.github/workflows/build.yml) to switch `my-anatase`
to something else, enable build on pushes, and run the workflow on a schedule.