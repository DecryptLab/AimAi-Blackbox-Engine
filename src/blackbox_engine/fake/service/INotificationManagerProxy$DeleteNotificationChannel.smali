.class public Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$DeleteNotificationChannel;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteNotificationChannel"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "deleteNotificationChannel"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.INotificationManagerProxy.DeleteNotificationChannelGroup (top.niunaijun.blackbox.fake.service.INotificationManagerProxy$DeleteNotificationChannelGroup)
