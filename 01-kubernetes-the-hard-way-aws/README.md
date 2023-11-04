# About

This repository is a fork of the renowned [Kubernetes The Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way) project originally created by Kelsey Hightower. Also thanks to [@slawekzachcial](https://github.com/slawekzachcial) for his [work](https://github.com/slawekzachcial/kubernetes-the-hard-way-aws) that made this easier.

In this, we've updated the versions of various tools compared to the original project.

## Cluster Details

Kubernetes The Hard Way guides you through bootstrapping a highly available Kubernetes cluster with end-to-end encryption between components and RBAC authentication.

* [kubernetes](https://github.com/kubernetes/kubernetes) v1.28.3
* [containerd](https://github.com/containerd/containerd) v1.7.7
* [coredns](https://github.com/coredns/coredns) v1.10.1
* [cni](https://github.com/containernetworking/cni) v1.3.0
* [etcd](https://github.com/etcd-io/etcd) v3.5.8

## Labs

This tutorial assumes you have access to the [Amazon Web Service](https://aws.amazon.com/).
* [Prerequisites](docs/01-prerequisites.md)
* [Installing the Client Tools](docs/02-client-tools.md)
* [Provisioning Compute Resources](docs/03-compute-resources.md)
* [Provisioning the CA and Generating TLS Certificates](docs/04-certificate-authority.md)
* [Generating Kubernetes Configuration Files for Authentication](docs/05-kubernetes-configuration-files.md)
* [Generating the Data Encryption Config and Key](docs/06-data-encryption-keys.md)
* [Bootstrapping the etcd Cluster](docs/07-bootstrapping-etcd.md)
* [Bootstrapping the Kubernetes Control Plane](docs/08-bootstrapping-kubernetes-controllers.md)
* [Bootstrapping the Kubernetes Worker Nodes](docs/09-bootstrapping-kubernetes-workers.md)
* [Configuring kubectl for Remote Access](docs/10-configuring-kubectl.md)
* [Provisioning Pod Network Routes](docs/11-pod-network-routes.md)
* [Deploying the DNS Cluster Add-on](docs/12-dns-addon.md)
* [Smoke Test](docs/13-smoke-test.md)
* [Cleaning Up](docs/14-cleanup.md)
