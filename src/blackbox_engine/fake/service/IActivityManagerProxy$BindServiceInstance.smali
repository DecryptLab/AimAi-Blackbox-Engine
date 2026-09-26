.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindServiceInstance;
.super Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindIsolatedService;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindServiceInstance"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "bindServiceInstance"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 337
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindIsolatedService;-><init>()V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.BroadcastIntent (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$BroadcastIntent)
