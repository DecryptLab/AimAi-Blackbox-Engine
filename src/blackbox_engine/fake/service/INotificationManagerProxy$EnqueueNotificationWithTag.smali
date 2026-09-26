.class public Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnqueueNotificationWithTag"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "enqueueNotificationWithTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdIndex()I
    .registers 1

    .line 124
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getTagIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getTagIndex()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getTagIndex()I

    move-result p1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;->getIdIndex()I

    move-result p0

    aget-object p0, p3, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 114
    const-class p2, Landroid/app/Notification;

    invoke-static {p3, p2}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    .line 115
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->enqueueNotificationWithTag(ILjava/lang/String;Landroid/app/Notification;)V

    const/4 p0, 0x0

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.INotificationManagerProxy.GetNotificationChannel (top.niunaijun.blackbox.fake.service.INotificationManagerProxy$GetNotificationChannel)
