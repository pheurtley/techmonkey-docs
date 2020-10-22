---
title: "About"
date: 2020-10-21T23:05:42-03:00
draft: false
---

# Hello world from Hugo!

### What is this about?

A static website that I will use to document and what better than to use the start-up as the first documentation.

This mini project consists of the following:

A Github [Repository techmonkey-docs](https://github.com/pheurtley/techmonkey-docs)  with Hugo's files, the declaration for the docker image, the file to use Github Action (another yml)

On the other hand we have a second [Repository techmonkey](https://github.com/pheurtley/techmonkey-docs) with the declarations to generate in Kubernetes with ArgoCD the deployment in CIVO.

Going on clean.
We generate the static files in Hugo and generate the commit in the repository in main branch. Github Action detects the change and executes the declaration in the yml. That basically uses the latest version of ubuntu and generates the image with the declaration of our dockerfile. Once the image is generated it is uploaded with a tag to Docker Hub.

The second part of Github Action uses kubectl to update the image that is in the CIVO deployment but that part of the code is going to be commented so that the Kubernetes control does it ArgoCD. It remains in the file as an example.

What is CIVO?

[Managed Kubernetes service, powered by k3s](https://www.civo.com/)

All the files to be replicated are in the repositories.

That's it ! See ya !
