.class public abstract Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHostPackageName()Ljava/lang/String;
.end method

.method public isEnableLauncherActivity()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public requestInstallPackage(Ljava/io/File;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
