.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSenderWithFeature;
.super Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIntentSenderWithFeature"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getIntentSenderWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 477
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;-><init>()V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.GetIntentSenderWithSourceToken (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$GetIntentSenderWithSourceToken)
