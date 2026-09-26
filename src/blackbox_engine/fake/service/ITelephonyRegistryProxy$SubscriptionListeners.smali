.class public Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy$SubscriptionListeners;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ITelephonyRegistryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionListeners"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
    value = {
        "addOnSubscriptionsChangedListener",
        "addOnOpportunisticSubscriptionsChangedListener",
        "removeOnSubscriptionsChangedListener"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method
