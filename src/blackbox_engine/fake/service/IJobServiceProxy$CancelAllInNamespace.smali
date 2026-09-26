.class public Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$CancelAllInNamespace;
.super Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$CancelAll;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelAllInNamespace"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "cancelAllInNamespace"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$CancelAll;-><init>()V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IJobServiceProxy.Enqueue (top.niunaijun.blackbox.fake.service.IJobServiceProxy$Enqueue)
