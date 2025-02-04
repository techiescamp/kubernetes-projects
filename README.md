# kubernetes Hands On Projects For Learning

Practical real-world hands-on projects to practice and learn Kubernetes implementations.

These Kubernetes projects will help you master Kubernetes and DevOps skills through practical implementations. Learn how to deploy clusters, deploy different types of applications, manage services, and troubleshoot applications in Kubernetes environments with these practical projects.

## Hit the Star! ⭐

If you are planning to use this repo for learning, please hit the star. Thanks!

## Kubernetes Certification Voucher (UpTo 47% OFF) 🎉

As part of our commitment to helping the DevOps community save money on Kubernetes Certifications, we continuously update the latest voucher codes from the Linux Foundation

> [!IMPORTANT]
> 🚀  Kubernetes Certification aspirants can **save 40%** today using code **LUNAR25CT** at https://kube.promo/devops. It is a limited-time offer from the Linux Foundation.

The following are the best bundles to **save upto 47%** with code **LUNAR25CT**

- KCNA + KCSA + CKA + CKAD + CKS (47% Savings): [kube.promo/kubestronaut](https://kube.promo/kubestronaut)
- CKA + CKAD + CKS Exam bundle (45% Savings): [kube.promo/k8s-bundle](https://kube.promo/k8s-bundle)
- CKA + CKS Bundle (45% Savings) [kube.promo/bundle](https://kube.promo/bundle)
- KCNA + CKA (45% Savings) [kube.promo/kcka-bundle](https://kube.promo/kcna-cka)
- KCSA + CKS Exam Bundle (45% Savings) [kube.promo/kcsa-cks](https://kube.promo/kcsa-cks)
- KCNA + KCSA Exam Bundle (45% Savings) [kube.promo/kcna-kcsa](https://kube.promo/kcna-kcsa)

>Note: You have one year of validity to appear for the certification exam after registration

## 📑 Phase 1 Projects

In phase 1, we will deploy different types of applications by creating each object manually. If you are learning Kubernetes, this will help you relate each object to real-world setups. It will also help you understand complex Helm charts and create custom application manifests from scratch.


  * [🛠️ Project 01: Kubernetes the Hard Way on AWS](#project-01-kubernetes-the-hard-way-on-aws)
  * [📦 Project 02: Setup Self Hosted Kubeadm Cluster](#project-02-setup-self-hosted-kubeadm-cluster)
  * [☕ Project 03: Deploy Java App With MySQL on Kubernetes](#project-03-deploy-java-app-with-mysql-on-kubernetes)
  * [📝 Project 04: Deploy WordPress on Kubernetes with Nginx and MySQL](#project-04-deploy-wordpress-on-kubernetes-with-nginx-and-mysql)

## Project 01: Kubernetes the Hard Way on AWS

You will learn the following from the hard way setup on AWS

- You'll get hands-on experience with Linux commands.
- You'll get hands-on with AWS CLI
- You will learn about systemd
- You'll learn how to generate and manage SSL/TLS certificates for secure communication between components.
- Encrypting data at rest.
- Networking
- As you're setting things up manually, you'll inevitably run into issues, which will teach you valuable troubleshooting skills.

>**Project Documentation:** [Kuberenetes the Hard Way on AWS](https://github.com/techiescamp/kubernetes-projects/tree/main/01-kubernetes-the-hard-way-aws)

## Project 02: Setup Self Hosted Kubeadm Cluster

It is essential for a DevOps engineer to have a deep understanding of the various components that make up a Kubernetes cluster

Building and maintaining a self-hosted Kubernetes cluster provides valuable hands-on experience and exposes you to the system's complexities. This experience will help you better understand the cluster control plane and worker node components. 

So We strongly suggest using a self-hosted kubernetes cluster during your learning process rather than using easily available solutions. Because Kubeadm allows you to access the VMs and provides the ability to troubleshoot and examine all the cluster components. With a multinode cluster, you can have a setup that mimics the real-world project setup.

Also, If you're preparing for the CKA or CKS exam, it's important to note that cluster management using Kubeadm is part of the exam syllabus.

>**Project Video:** [Setup Kubeadm Cluster](https://www.youtube.com/watch?v=xX52dc3u2HU)

## Project 03: Deploy Java App With MySQL on Kubernetes

In this project, you will practically use the following key Kubernetes objects. It will help you understand how these objects can be used in real-world project implementations:

- Deployment
- HPA
- ConfigMap
- Secrets
- StatefulSet
- Service
- Namespace

It also covers key concepts such as:

- Startup, readiness, and liveness probes
- Consuming secret and configmap data using Environment Variables
- MySQL initialization script from ConfigMap to create tables
- Creating an application properties file from ConfigMap to be consumed by the app

Additionally, you will go through:

- Building a Java Spring Boot application using Maven
- Dockerizing the Java application and pushing it to Docker Hub

This is a simple but effective project to put your basics into practice. If you learn to work with one app effectively, you can deploy any number of apps. It's all about understanding how to use these objects correctly, and this guide is a good starting point for that.

>**Project Documentation:** [Deploy Java & MySQl Apps on Kubernetes](https://devopscube.com/deploy-java-app-kubernetes/)

## Project 04: Deploy WordPress on Kubernetes with Nginx and MySQL

In this project you will learn the steps to deploy WordPress on Kubernetes cluster with Nginx and MySQL database.

It also covers key kubernetes objects such as:

- **PersistantVolumeClaim (PVC)** – This creates and attaches PVs to WordPress Applications and MySQL databases to store data.
- **NetworkPolicy** – Assign a network policy for MySQL to restrict its incoming traffic.

Other Objects include Deployment, Service, Statefulful, Secret, Configmap etc.

>**Project Documentation:** [Deploy WordPress on Kubernetes with Nginx and MySQL](https://devopscube.com/deploy-wordpress-on-kubernetes/)

