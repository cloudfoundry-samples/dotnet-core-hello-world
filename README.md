# dotnet-core-hello-world

A minimal ASP.NET Core sample app for deploying to Cloud Foundry.

This is a maintained fork of [cloudfoundry-samples/dotnet-core-hello-world](https://github.com/cloudfoundry-samples/dotnet-core-hello-world), updated to .NET 8.

## Prerequisites

- [.NET 8 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)
- A Cloud Foundry deployment with the `dotnet_core_buildpack` available
- The [cf CLI](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html)

## Deploy to Cloud Foundry

```
cf login -a api.EXAMPLE-DOMAIN
cf target -o MY-ORG -s MY-SPACE
cf push
```

The app responds with `Hello World!` on the root path `/`.

## Tutorial

For a full step-by-step tutorial covering deployment, logging, health checks, and scaling, see the [Cloud Foundry .NET Tutorial](https://github.com/cloudfoundry/docs-dotnet-core-tutorial).
