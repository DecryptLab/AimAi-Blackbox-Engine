.class public Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$GetNotificationChannelGroups;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$DeleteNotificationChannelGroup;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CreateNotificationChannelGroups;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$DeleteNotificationChannel;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CreateNotificationChannels;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$EnqueueNotificationWithTag;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CancelNotificationWithTag;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$GetNotificationChannels;,
        Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$GetNotificationChannel;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "INotificationManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-static {}, Lblack/android/app/BRNotificationManager;->get()Lblack/android/app/NotificationManagerStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/NotificationManagerStatic;->getService()Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 42
    invoke-static {}, Lblack/android/app/BRNotificationManager;->get()Lblack/android/app/NotificationManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/NotificationManagerStatic;->getService()Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 47
    invoke-static {}, Lblack/android/app/BRNotificationManager;->get()Lblack/android/app/NotificationManagerStatic;

    move-result-object p1

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lblack/android/app/NotificationManagerStatic;->_set_sService(Ljava/lang/Object;)V

    .line 48
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.INotificationManagerProxy.CancelNotificationWithTag (top.niunaijun.blackbox.fake.service.INotificationManagerProxy$CancelNotificationWithTag)
