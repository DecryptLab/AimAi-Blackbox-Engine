.class public Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy$CreateNotificationChannels;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "INotificationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateNotificationChannels"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "createNotificationChannels"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 130
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

    const/4 p0, 0x1

    .line 134
    aget-object p0, p3, p0

    invoke-static {p0}, Lblack/android/content/pm/BRParceledListSlice;->get(Ljava/lang/Object;)Lblack/android/content/pm/ParceledListSliceContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/content/pm/ParceledListSliceContext;->getList()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p0, :cond_13

    return-object p1

    .line 137
    :cond_13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 138
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;

    move-result-object p3

    check-cast p2, Landroid/app/NotificationChannel;

    invoke-virtual {p3, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BNotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_17

    :cond_2b
    return-object p1
.end method

###### Class top.niunaijun.blackbox.fake.service.INotificationManagerProxy.DeleteNotificationChannel (top.niunaijun.blackbox.fake.service.INotificationManagerProxy$DeleteNotificationChannel)
