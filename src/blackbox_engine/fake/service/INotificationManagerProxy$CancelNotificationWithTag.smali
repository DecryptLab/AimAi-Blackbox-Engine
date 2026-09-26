.class public Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CancelNotificationWithTag;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelNotificationWithTag"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "cancelNotificationWithTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdIndex()I
    .registers 1

    .line 102
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getTagIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getTagIndex()I
    .registers 1

    .line 95
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getTagIndex()I

    move-result p1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CancelNotificationWithTag;->getIdIndex()I

    move-result p0

    aget-object p0, p3, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 90
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->cancelNotificationWithTag(ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.INotificationManagerProxy.CreateNotificationChannelGroups (top.niunaijun.blackbox.fake.service.INotificationManagerProxy$CreateNotificationChannelGroups)
