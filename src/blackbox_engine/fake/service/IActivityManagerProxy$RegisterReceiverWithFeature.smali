.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;
.super Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterReceiverWithFeature"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "registerReceiverWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 650
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;-><init>()V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.SendIntentSender (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$SendIntentSender)
